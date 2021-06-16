# Copyright 2021 Oscar José Pellicer Valero
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
# associated documentation files (the "Software"), to deal in the Software without restriction, 
# including without limitation the rights to use, copy, modify, merge, publish, distribute, 
# sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is 
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in all copies or 
# substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING 
# BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND 
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, 
# DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, 
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

'''
This contains some useful wrappers for OpenAI environments to help integrate them
with different kinds of agents.
'''

import numpy as np
from gym.core import ObservationWrapper

class StateHolder(ObservationWrapper):
    def __init__(self, env, hold_last_N=1):
        '''
            Holds the observations of the last `hold_last_N` time steps
            and makes them available as part of the state.
            
            Parameters
            ----------
            env: OpenAI gym environment instance
                The environment over which this wrapper acts
            hold_last_N: int
                Number of previous time steps to hold state values for
        '''
        super(StateHolder, self).__init__(env)
        self.N= hold_last_N
        self.states=[np.zeros(env.observation_space.shape, dtype=np.float32)] * hold_last_N
        
    def observation(self, state):
        self.states.append(state)     
        new_state= np.concatenate(self.states) 
        if len(self.states) > self.N: 
            del self.states[0]  
        return new_state
        
class Normalizer(ObservationWrapper):
    def __init__(self, env, means=None, stds=None, period_auto=14, running=False):
        '''
            Standardizes the observations by substracting mean and dividing by std.
            Means and stds can be provided beforehand, or be automatically calculated
            from the data (using a static approximation, or using a running approximation)
            
            Parameters
            ----------
            env: OpenAI gym environment instance
                The environment over which this wrapper acts
            means: array or None, default None
                State means, must have the same shape as the state
            stds: array or None, default None
                State stds, must have the same shape as the state
            period_auto: float, default 14
                Period (in time units, not in time steps), over which previous estimations
                are forgotten (only affect 1% of the current estimations). Only applicable
                when `running` == True
            running: bool, default False
                Use a running estimation of the mean and std. If True, data after `period_auto`
                time units only has a 1% influence on current estimations. Otherwise, each
                new sample at a time step t has an influence 1/t over the whole estimation.
        '''
        super(Normalizer, self).__init__(env)
        self.means, self.stds, self.auto= means, stds, means is None
        if self.auto:
            alpha= 0.01**(self.time_step/period_auto)
            stat_shape=self.env.observation_space.shape[0]
            self.rs= RunningStats(stat_shape=stat_shape, alpha=alpha, running=running)
        
    def observation(self, state):
        if self.auto:
            self.rs.push(state)
            return (state - self.rs.mean) / np.maximum(self.rs.std, 0.01)
        else: 
            return (state - self.means) / self.stds

class Binarizer(ObservationWrapper):
    def __init__(self, env, valid_values=None, valid_values_auto=np.arange(-2., 2.1, 2/3)):
        '''
            Discretizes the state for use with tabular agents such as q-learning
            
            Parameters
            ----------
            env: OpenAI gym environment instance
                The environment over which this wrapper acts
            valid_values: list of arrays or None, default None
                List of valid values. `valid_values[i]` contains an array with all
                the valid values for `state[i]`
            valid_values_auto: array or None, default None
                List of valid values if in used over a Normalizer wrapper. In this case,
                all states share the same array of valid_values, since all have been
                standardized by the Normalizer
        '''
        super(Binarizer, self).__init__(env)
        self.valid_values= valid_values
        self.valid_values_auto= valid_values_auto
        if self.valid_values is None and not isinstance(self.env, Normalizer):
            raise ValueError('Either provide discrete valid values, or wrap this over a Normalizer')
        
    def _get_closest(self, vv, x):
        '''
            Returns the closest value to `x` for all the values in `vv`
            
            Parameters
            ----------
            vv: array
                Array with the valid values
            x: float
                Number to discretize to a value of `vv`
                
            Returns
            -------
            vvx: float
        '''
        return vv[np.argmin(np.abs(vv - x))]
    
    def observation(self, state):      
        if self.valid_values is not None:
            return np.array([self._get_closest(valid_values_var, state_var) 
                             for state_var, valid_values_var in zip(state, self.valid_values)])
        else:
            return np.array([self._get_closest(self.valid_values_auto, state_var) for state_var in state])

class RunningStats(object):
    def __init__(self, stat_shape, alpha=0.99, running=True):
        '''
            Computes the running mean and std of some 1D array using either a
            static approximation, or a running approximation
            Adapted from: https://gist.github.com/wassname/a9502f562d4d3e73729dc5b184db2501
            
            Parameters
            ----------
            stat_shape: list, tuple or array
                Shape of the 1D vector over which the statistics will be computed.
                Needed to initialize internal structures.
            alpha: float, default 0.99
                Memory factor, determines how far into the past the running statistics are able to
                remember. Only applicable when `running` == True
            running: bool, default False
                Use a running estimation of the mean and std. If True, data from the past loses quickly
                (depending on the value of alpha) influence on current estimations. Otherwise, each
                new sample at a time step t has an influence 1/t over the whole estimation.
        '''
        self.alpha, self.n, self.running= alpha, 1, running
        self.mean= np.zeros(stat_shape, dtype=np.float32)
        self.var= np.ones(stat_shape, dtype=np.float32)
        if not running:
            self.varn= np.ones(stat_shape, dtype=np.float32)

    def push(self, x):
        '''
            Adds a new array `x` to update current mean and std estimations
            
            Parameters
            ----------
            x: array
                1D array of the data for which mean and std are being computed
        '''
        prev_mean = self.mean.copy()
        if self.running:
            self.mean = self.alpha * self.mean + (1-self.alpha) * x
            self.var = self.alpha * self.var + (1-self.alpha) *  ( (x - prev_mean) * (x - self.mean) )
        else:
            self.mean += (x - self.mean) / self.n
            self.varn += (x - prev_mean) * (x - self.mean)
            self.var= self.varn / self.n
            self.n+= 1

    @property
    def std(self):
        return np.sqrt(self.var)