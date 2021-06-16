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
This file contains all the code for letting an agent interact and learn from the evironment
as well as to plot the evolution of the values of the variables over time
'''

import random
import tqdm
import pandas as pd
import numpy as np
from tqdm import trange
from datetime import datetime
import matplotlib.pyplot as plt
from IPython.display import clear_output

def moving_average(x, span=7*96):
    '''
        Computes the exponentially moving average filter of `x` for a `span` of days.
        
        Parameters
        ----------
        x: array
            Numpy array to be filtered
        span: int
            Specify decay (α) of the exponentially moving average in terms of 
            span: α=2/(span+1), for span >= 1
            
        Returns
        -------
        filtered_x: array
    '''
    return pd.DataFrame({'x': np.asarray(x)}).x.ewm(span=span).mean().values

def play_episode(env, agent, train=True, reward_scale=1., plot=True, title='', 
                 combine_result=True, replay_buffer=None, rb_batch=10, 
                 epsilon_scheduler=lambda eps, t, t_max: eps):
    '''
        Plays an episode of the evironment `env` with the `agent` interacting in it.
        
        Parameters
        ---------- 
        env: Instance of OpenAI Gym Environment subclass
            Environment to which the `agent` will be exposed
        agent: Instance of utils.QAgent subclass
            Agent that will explore the `env`
        train: bool, default True
            If True, the agent is to be trained during the episode
        reward_scale: float, default 0.1
            Reward scale factor
        plot: bool, default True
            If True, show a plot of the agent's actions and observations every some steps
        title: str, default ''
            Title of the plot. Ignored if plot == False
        combine_results: bool, default True
            Wether to apply the combine_results function to the list of results at the end, or to return
            the full list of results instead (see combine_results for further information)
        replay_buffer: Instance of ReplayBuffer or None, default None
            Experience Replay Buffer to use, or None if no Experience Replay is to be employed
        rb_batch: int, default 10
            Size of the batch to be returned by the Experience Replay Buffer. Only applicable
            if replay_buffer is not None
        epsilon_scheduler: function, default lambda eps, t, t_max: eps
            Function to update epsilon within an episode. It takes the current time step `t`,
            the maximum number of time steps `t_max`, and current epsilon `eps` as input, and returns
            the updated epsilon value
            
        Returns
        -------
        mean_reward: float
            Mean reward over the whole episode
        rewards: list of floats
            List of rewards for every time step
        states: list of arrays
            List of states for every time step
        results: list of pyfmi.common.io.ResultDymola subclass instances or dict
            List of results for every time step if combine_results == True, dictionary with
            the combined results otherwise 
        
    '''
    #Initialize
    total_reward = 0.0
    s= env.reset() #if not env.is_reset else env.state
    rewards, states, results, actions= [], [], [], []
    
    #Try to get the t_max automatically
    try:
        t_max=int((env.max_time-env.start_time)/env.time_step) + 1
    except:
        t_max=int(1e5)
    
    #Iterate
    for t in trange(t_max):
        #Get action
        if train:
            a = agent.get_action(s)
        else:
            a = agent.get_best_action(s)
        next_s, r, done, result = env.step(np.array([a]))
        r*= reward_scale
        
        #Check for incorrect rewards
        if r > 0 or r < -50000*reward_scale:
            raise RuntimeError('Reward outside bounds:', next_s, r, done)
            #raise RuntimeError('Reward > 0: Our agent has found an exploit?')
            return total_reward, rewards, states, results
        
        #Train the agent
        if train:
            agent.epsilon= epsilon_scheduler(agent.epsilon, t, t_max)
            if replay_buffer is not None:
                replay_buffer.add(s, a, r, next_s, done)
                agent.train(*replay_buffer.sample(rb_batch))
            else:
                agent.train([s], [a], [r], [next_s], [done])
                
        
        rewards.append(r); states.append(s); results.append(result); actions.append(a)
        s = next_s
        
        #Plot every 14 days
        every_t= int(14 / env.time_step)
        if plot and (t % every_t == 0):
            rewards_ewma = moving_average(rewards)
            idx0, idx1= np.max([0, len(rewards)-every_t]), len(rewards)

            try:
                clear_output()
                plt.figure(figsize=(20,5))
                plt.plot(rewards[idx0:idx1], label='Reward')
                plt.plot(rewards_ewma[idx0:idx1], label='Reward ewma')
                plt.legend()
                plt.grid()
                plt.title(title + (' | ' if title!='' else '') + 'eps = %.4f'%agent.epsilon)

                plt.figure(figsize=(20,5))
                plt.plot(states[idx0:idx1], label='State')
                plt.plot(actions[idx0:idx1], label='Action')
                plt.legend()
                plt.grid()
                plt.show()
            except Exception as e:
                print('Exception while plotting:', e)
                print(idx0, idx1, rewards,every_t, len(states), states[0].shape, flush=True)
        
        if done: break
            
    if combine_result:
        results= combine_results(env, results)
        
    return np.mean(rewards), rewards, states, results

def plot_vars(results, variables, descriptions, t0=0, t1=None, title='', ylim=None):
    '''
        Plots a the values of a variable over a given interval of time
        
        Parameters
        ----------
        results: dict, or pyfmi.common.io.ResultDymola subclass instance
            The results dictionary to plot, with variable names as keys
        variables: list of str
            List of variables to plot
        descriptions: list of str
            List of descriptions to plot alongside the variables
        t0: float, default 0
            Starting time for the plot
        t1: float or None, default None
            Final time for the plot. If None, take t1 as the latest time available
        title: str, defeault ''
            Title of the plot
        ylim: tuple of two floats or None, default None
            Limits of the plot in the y axis
    '''
    first_idx=  np.max( [np.argmin(np.abs(results['time'] - t0)) - 1, 0] )
    last_idx=  np.min( [np.argmin(np.abs(results['time'] - t1)) + 1, len(results['time'])] )
    
    plt.figure(figsize=(12,6))
    plt.title(title)
    for var, description in zip(variables, descriptions) :
        #description= res.result_data.description[res.keys().index('PI1.y')] #Find better way!
        #label= var +  ((': '+ description) if description!='' else '')
        label= description + ' (%s)'%var
        plt.plot(results['time'][first_idx:last_idx], results[var][first_idx:last_idx], label=label)
        plt.ylabel('Values')
        plt.xlabel('Time (days)')
        if ylim is not None: 
            plt.ylim(ylim)
    plt.legend()
    
def combine_results(env, result):
    '''
        Combines a list of result objects produced by pyfmi into a dictionary by taking
        the mean of all meassurements at every time step
        
        Parameters
        ----------
        result: list of some pyfmi.common.io.ResultDymola subclass instances
            List of the results provided by pyfmi, one result for each simulation time step
            
        Returns
        -------
        final_results: dict
            Python dictionary with the variable names as keys, and an array of the values associated
            with that given variable for every time step
    '''
    problematic_vars= []
    final_results= {}
    for var in tqdm.tqdm(['time'] + list(env.model.get_model_variables().keys())):
        try:
            result[0][var] #Just to see if this fails!
            final_results[var]= []
            for res in result:
                final_results[var].append(np.mean(res[var]))
                #final_results[var].append(res[var][::sampling_period])
            #final_results[var]= np.concatenate(final_results[var], axis=0)
            final_results[var]= np.array(final_results[var])
        except Exception as e:
            problematic_vars.append(var)
    if len(problematic_vars):
        print('There was a problem reading some variables. '+\
              'Redoing the simulation without filters may fix it')
    return final_results

class ReplayBuffer(object):
    def __init__(self, size):
        '''
            Create a Replay Buffer.
            Based on  https://github.com/openai/baselines/blob/master/baselines/deepq/replay_buffer.py
            
            Parameters
            ----------
            size: int
                Maximum number of elements to store in the buffer. When the buffer
                overflows the old memories are dropped.
        '''
        self._storage = []
        self._maxsize = size
        self._next_idx = 0

    def __len__(self):
        '''
            Returns current lenght of the buffer
            
            Returns
            -------
            int: lenght of the buffer
        '''
        return len(self._storage)

    def add(self, obs_t, action, reward, obs_tp1, done):
        '''
            Adds an element to the buffer
            
            Parameters
            ----------
            obs_t: np.array
                Observation
            action: np.array
                Action executed given obs_t
            reward: np.array
                Reward received as results of executing action
            obs_tp1: np.array
                Observation seen after executing action
            done: np.array
                True if executing action resulted in the end of an episode
        '''
        data = (obs_t, action, reward, obs_tp1, done)

        if self._next_idx >= len(self._storage):
            self._storage.append(data)
        else:
            self._storage[self._next_idx] = data
        self._next_idx = (self._next_idx + 1) % self._maxsize

    def sample(self, batch_size):
        '''
            Sample a batch of experiences.

            Parameters
            ----------
            batch_size: int
                How many transitions to sample.

            Returns
            -------
            obs_batch: np.array
                batch of observations
            act_batch: np.array
                batch of actions executed given obs_batch
            rew_batch: np.array
                rewards received as results of executing act_batch
            next_obs_batch: np.array
                next set of observations seen after executing act_batch
            done_mask: np.array
                done_mask[i] = 1 if executing act_batch[i] resulted in
                the end of an episode and 0 otherwise.
        '''
        idxes = [ random.randint(0, len(self._storage) - 1)
                  for _ in range(batch_size) ]
        obses_t, actions, rewards, obses_tp1, dones = [], [], [], [], []
        for i in idxes:
            data = self._storage[i]
            obs_t, action, reward, obs_tp1, done = data
            obses_t.append(np.array(obs_t, copy=False))
            actions.append(np.array(action, copy=False))
            rewards.append(reward)
            obses_tp1.append(np.array(obs_tp1, copy=False))
            dones.append(done)
        return (np.array(obses_t), np.array(actions), np.array(rewards),
                np.array(obses_tp1), np.array(dones) )