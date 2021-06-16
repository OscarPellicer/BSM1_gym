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
This contains the base ModelicaEnv, to be used by any Modelica environment that is to be
simulated using the OpenAI gym framework, as well as a particular subclass BSM1Env, for the
Modelica BSM1 environment. It also contains addional functions needed by this environment.
'''

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
from gym import spaces
import gym
from pyfmi import load_fmu

from datetime import datetime
import os, abc

class ModelicaEnv(gym.Env, metaclass=abc.ABCMeta):
    def __init__(self, path, fmi_version= 2, time_step=0.1, start_time= 0., 
                 sim_options={}, sim_ncp=100, parameters={}, output_names=[], 
                 action_names=[], verbose=False, reset=True):
        '''
            Superclass for all environments to be simulated with Modelica-exported FMUs.
            To create your own environment inherit this class and implement all abstract methods.

            If you need more sophisticated logic to be implemented, you can always override
            the rest of the methods in the child-class, such as:
            reset(), step(), render(), close(), seed()

            Based on: https://github.com/ucuapps/modelicagym
            
            Parameters
            ----------
            path: str
                Path to the fmu file
            fmi_version: int, default 2
                Version of the FMU file
            time_step: float, default 0.1
                Size of the time step: how much the simulation is advanced every time
                step() method is called
            start_time: float, default 0.
                Start time for the simulation
            sim_options: dict, default {}
                Dictionary with simulation options to pass to pyfmi's model.simulate() methods.
                See https://jmodelica.org/pyfmi/tutorial.html
            sim_ncp: int, default 2
                Number of points time points in which the results will be discretized and returned
            parameters: dict, defeault {}
                Dictionary with model parameters and their initial values
            output_names: list, default []
                List of names of variables that will represent the state of the environment
            verbose: bool, default False
                Print additional information on-screen
            reset: bool, default True
                Whether to automatically reset the environment during its instantiation.
                If set to False, reset() method will have to be manually called at a later point.                
        '''
        #Load model from fmu
        self.fmi_version= fmi_version
        self.model_name = path.split(os.path.sep)[-1]
        self.verbose= verbose
        self.path= path
        self.sim_options= sim_options
        self.sim_ncp= sim_ncp

        #Parameters required by this implementation
        self.time_step = time_step
        self.parameters = parameters
        self.start_time= start_time
        self.output_names = output_names
        self.action_names= action_names

        #Initialize the model time and state
        if reset:
            self.state = self.reset()

        #OpenAI Gym requirements
        self.action_space = self._get_action_space()
        self.observation_space = self._get_observation_space()

    def render(self, **kwargs):
        '''
            OpenAI Gym API. Determines how current environment state should be rendered.
            Environments can overwrite this method to show their env.
        '''
        pass
    
    def close(self):
        '''
            OpenAI Gym API. Finishes the environment, closing all open files, all
            acquired locks, etc. Environments can overwrite this method if needed.
        '''
        return True

    def reset(self):
        '''
            OpenAI Gym API. Restarts environment and sets it ready for experiments.
            It does the following:
                - Resets model
                - Sets simulation start time to 0
                - Sets initial parameters of the model
                - Initializes the model
                - Sets environment class attributes, e.g. start and stop time.
                
            Returns
            -------
            state: array
        '''
        import gc
        gc.collect()
        self.model = load_fmu(self.path)#,log_file_name=self.get_log_file_name())
        
        #Handle simulation options
        self.options= self.model.simulate_options()
        self._add_sim_options(self.sim_options)
        self._add_sim_options({'ncp': self.sim_ncp})
        
        self.model.reset()
        if self.fmi_version == 2:
            self.model.setup_experiment(start_time=0)

        if len(self.parameters):
            self.model.set(list(self.parameters),
                           list(self.parameters.values()))
        #self.model.initialize()
        
        #Simulate and observe result state
        self._add_sim_options({'initialize': True})
        self.start= self.start_time
        if self.verbose:
            print(' - Intializing model from %.1f to %.1f. This may take a couple of minutes.'%(0., self.start))
        self.results = self.model.simulate(start_time=0., final_time=self.start,
                                           options=self.options, input=self._get_initial_inputs())
        self.state= np.array([self.results.final(k) for k in self.output_names])
        
        #Update times
        self.stop = self.start + self.time_step
        self.done = False
        self.is_reset= True
        
        return self.state
    
    def step(self, actions):
        '''
            OpenAI Gym API. Determines how one simulation step is performed for the environment.
            
            
            Parameters
            ----------
            inputs: array
                Action to be applied to model, corresponding with FMU variables
                defined in `self.action_names`
            
            Returns
            -------
            state: array
                (Obsevable) state of the environment
            reward: float
                Reward given away by the environment after applying the action
            done: bool
                True if the episode has finished
            results: dict
                Arbitrary dictionary containing extra information about the step
        '''
        return self._fmu_step( (self.action_names, 
                                 np.concatenate([np.array([0.]), action])) )
    
    def _fmu_step(self, inputs):
        '''
            Advances the internal FMU simulation one step, applying some `input` values to it.
            
            Parameters
            ----------
            inputs: tuple of two elements: a list of variable names, and an array
                The first element of the tuple contains the list of the N FMU variables whose
                values will be updated. The second element contains an array of size T*(N+1) 
                with the values of those variables at T time points. The first column of the 
                array must always contain the time to which a given row corresponds.
                Other input modalities are also supported. See for more information:
                https://jmodelica.org/pyfmi/tutorial.html
            
            Returns
            -------
            state: array
                (Obsevable) state of the environment
            reward: float
                Reward given away by the environment after applying the action
            done: bool
                True if the episode has finished
            results: dict
                Arbitrary dictionary containing extra information about the step
        '''
        if self.done:
            print('You should not call step() once the environment has already returned done=True.',
                  'You must call reset() before.')
            return self.state, self._reward_policy(), self.done, self.results
        
        # Simulate and observe result state
        self._add_sim_options({'initialize': False})     
        self.results = self.model.simulate(start_time=self.start, final_time=self.stop,
                                           options=self.options, input=inputs)
        self.is_reset= False
        self.state= np.array([self.results.final(k) for k in self.output_names])

        # Check if episode has finished
        self.done = self._is_done()
        if not self.done:
            self.start = self.stop
            self.stop += self.time_step
            
        return self.state, self._reward_policy(), self.done, self.results
    
    def print_last_exception(self):
        import traceback
        traceback.print_tb(self.last_exception.__traceback__)

#     def get_log_file_name(self):
#         '''
#             Generates a logfile name. Currently unused
#         '''
#         log_date = datetime.utcnow()
#         log_file_name = "{}-{}-{}_{}.txt".replace('fmu', 'txt').format(
#             self.model_name, log_date.year, log_date.month, log_date.day)
#         return log_file_name

    @abc.abstractmethod
    def _get_action_space(self):
        '''
            Returns action space according to OpenAI Gym API requirements.
            
            Returns
            -------
            action_space: one of gym.spaces classes that describes action space
        '''
        pass

    @abc.abstractmethod
    def _get_observation_space(self):
        '''
            Returns state space according to OpenAI Gym API requirements.
            
            Returns
            -------
            state_space: one of gym.spaces classes that describes state space
        '''
        pass

    @abc.abstractmethod
    def _is_done(self):
        '''
            Implements the logic that determines when a session is considered to be done.
            
            Returns
            -------
            done: True if the session has ended
        '''
        pass
    
    @abc.abstractmethod
    def _get_initial_inputs(self):
        '''
            Retuns the inputs to be used for model intialization during a reset()
            See the documentation in self._fmu_step to see how these inputs
            should be structured
        '''
        pass
    
    def _add_sim_options(self, options):
        '''
            Internal function to add simulation options to the current 
            dictionary of options at self.options
        '''
        for k,v in options.items():
            self.options[k]= v
            
    @abc.abstractmethod
    def _reward_policy(self):
        '''
            Computes the reward after a step().
            
            Returns
            -------
            reward: float
        '''
        pass 

class BSM1Env(ModelicaEnv):
    def __init__(self, *args, max_time=365, **kwargs):
        '''
            Implements the BSM1 environment using the class ModelicaEnv that implements
            the OpenAI Gym API
            
            Parameters
            ----------
            max_time: float, default 365
                Determines number of days that the episode will last, which in turn
                defines the stopping criterion for this environment
        '''
        self.max_time= max_time
        self.WWSG= WWSourceGen()
        super().__init__(*args, **kwargs)
        
    def reset(self, reset_weather=True):
        if reset_weather:
            self.WWSG= WWSourceGen()
        self.WWSG.generate(self.max_time) #New weather patterns each episode
        return super().reset()

    def _is_done(self):
        '''
            Episode will run until `max_time` is reached
            
            Returns
            -------
            done: True if the session has ended
        '''
        return self.stop >= self.max_time

    def _get_action_space(self):
        return spaces.Box(np.array([0.0], dtype=np.float32), np.array([6.5], dtype=np.float32))

    def _get_observation_space(self):
        return spaces.Box(np.array([-1000.]*len(self.output_names), dtype=np.float32),\
                          np.array([1000.]*len(self.output_names), dtype=np.float32))
    
    def _get_initial_inputs(self):
        action= 1.2
        return ( self.WWSG.get_input_names() + self.action_names, 
                 #lambda t: add_constant_inputs(self.WWSG.evaluate(t), action) )
                 add_constant_inputs(self.WWSG.get_inputs(0, self.start_time), action) )

    def step(self, action):
        #Convert action to inputs and peform some checks
        action= np.array(action)
        if len(action) != len(self.action_names):
            raise RuntimeError('The number of actions does not coincide with the number of action_names')

        inputs= ( self.WWSG.get_input_names() + self.action_names, 
                  #lambda t: add_constant_inputs(self.WWSG.evaluate(t), action) )
                  add_constant_inputs(self.WWSG.get_inputs(self.start, self.stop), action) )
        
        if isinstance(inputs[1], list) and len(inputs[1]) == 0:
            raise RuntimeError('Inputs are empty!')
            
        #Sometimes simmulation breaks due to random errors
        #In those situations, we retry the step, and if this does not work, we just return done=True
        try:            
            return super()._fmu_step(inputs)
        except Exception as e:
            self.last_exception= e
            print('Exception found during simulation: \"%s\".' %str(e),
                  'Setting simulation as done. Please call env.reset()',
                  'To access the full traceback: env.print_last_exception()')
            self.print_last_exception()
            self.done= True
            return self.state, self._reward_policy(), self.done, self.results
        
    def _reward_policy(self):
        '''
            Computes the reward after a step().
            It computes the daily average operation cost of the plant
            and multiplyies it times -1 to transform it into a reward
            
            Returns
            -------
            reward: float
        '''
        return - operation_cost(self.results, get_daily_avg=True)

def add_constant_inputs(inputs, ct_inputs):
    '''
        Utility function to add a constant input to a set of time-dependent inputs
        To learn more about the structure of the inputs, see:
        https://jmodelica.org/pyfmi/tutorial.html
        
        Parameters
        ----------
        inputs: array
            Inputs array of dimensions T*(N+1), which we want to expand to dimensions
            T*(N+1+len(ct_inputs)) by filling the last len(ct_inputs) columns with the
            values from `ct_inputs`
        ct_inputs: array
            List of constant inputs to add to `inputs`
            
        Returns
        -------
        inputs: array
            The `inputs` array with the `ct_inputs` added to the last columns and repeated
            T times.
    '''
    return np.c_[inputs, np.tile(np.array(ct_inputs), (inputs.shape[0], 1))]

class WWSourceGen():
    def __init__(self, weather_period=14, weather_probabilties={'dry':0.7, 'strm':0.1, 'rain':0.2, 'steady':0.},
                 data_path='./inputs/', verbose=False, initial_weather=(['steady']*6) + (['dry']*2), rng_seed=22):
        '''
            Set the WasteWater input values according to the current weather, which changes randomly
            with `weather_probabilities`. Depending on the probability, a different set of 
            values are read from the `data_path`, where several files with different weather conditions
            are present.
            
            Parameters
            ----------
            weather_period: int, default 14
                During how many days is a certain kind of weather pattern sampled
            weather_probabilities: dict, default {'dry':0.7, 'strm':0.1, 'rain':0.2, 'steady':0.}
                Probabilities for sampling a weather pattern. The keys in the dictionary
                also refference to the name of the files where the values will be taken from. 
                For instanca, 'dry' weather values will be taken form Inf_dry_2006.txt
            data_path: str, default './inputs/'
                Path to the .txt files where weather values asre stored
            verbose: bool, default True
                Print some information
            initial_weather: list of str, default ['steady', 'dry']
                When a new set of weather patters is randomly generated, generate the first
                weather periods to some specific weather with probability 1. For instance, by default,
                the first 14 days will have steady weather, the next 14 days will have dry weather,
                and then the weather will be random according to `weather_probabilties`
            rng_seed: int, default 22
                Seed for the random number generator
        '''
        #Read files and preprocess them
        self.rng= np.random.default_rng(rng_seed)
        self.weather_probabilties= weather_probabilties
        self.weather_period= weather_period
        self.initial_weather= initial_weather
        self.column_names= ['t','Si','Ss','Xi','Xs','Xbh','Xba','Xp','So','Sno','Snh','Snd','Xnd','Salk','Q']
        self.data_dict= {}
        for weather_condition in weather_probabilties.keys():
            df= pd.read_csv(os.path.join(data_path, 'Inf_%s_2006.txt'%weather_condition), sep='\t')
            self.data_dict[weather_condition]= df
        
    def get_input_names(self):
        '''
            Get names of the inputs variables that need to be updated in the FMU
            
            Returns
            -------
            input_names: list of str
        '''
        return self.column_names[1:] #+ ['Temperature'] #Treq
    
    def generate(self, days):
        '''
            Generates `days` days of random weather
            
            Parameters
            ----------
            days: float
                Number of days to generate weather data for. Typically we want to generate
                data for as many days as the session is expected to last, e.g. 365 days
        '''
        gen_data= []
        self.weathers= []
        for i, day in enumerate(range(0, days, self.weather_period)):
            
            #Get random weather for the current weather period
            if len(self.initial_weather) > i:
                current_weather= self.initial_weather[i]
            else:
                current_weather= list(self.weather_probabilties.keys())[self.rng.choice(
                    len(self.weather_probabilties), p=list(self.weather_probabilties.values()))]
            self.weathers.append((day, current_weather))
            
            #Get weather data. For now, the first values are always used
            last_idx= np.argmin(np.abs(self.data_dict[current_weather]['t'].values - self.weather_period)) + 1
            data= self.data_dict[current_weather].iloc[:last_idx].values.copy()
            data[:,0]+= day #Offset time appropiately
            gen_data.append(data)
            
        self.data= np.concatenate(gen_data, axis=0)
        #self.data= add_constant_inputs(self.data, [15.]) #Treq
        
        #We also create a functional evaluator at any given time, so that both options are available
        #This, however, is much slower!
        from scipy import interpolate
        self._f= interpolate.interp1d(self.data[:,0], self.data[:,1:], kind='linear', copy=False, 
                                      axis=0, assume_sorted=True, fill_value='extrapolate')

    def plot(self, days=10000, var='Q'):
        '''
            Plots the value of some weather variable `var` for `days` days
            
            Parameters
            ----------
            days: float or None, default None
                Number of days to plot. If None, plot all generated days
            var: str, default 'Q'
                Weather variable to plot
        '''
        plt.figure(figsize=(20,7))
        last_idx=  ( np.argmin(np.abs(self.data[:,0] - days)) + 1 )
        x= self.data[:last_idx, 0]
        y= self.data[:last_idx, self.get_input_names().index('Q') + 1]
        plt.plot(x, y); plt.title(var); plt.xlabel('t (days)')
        
        for day, weather in self.weathers:
            if day > days: break
            plt.text(day, (plt.ylim()[1] - plt.ylim()[0])*.95, weather)
    
    def get_inputs(self, t0=0, t1=1):
        ''' 
            Returns a matrix of generated weather input variables between t0 and t1.
            Two additional samples are always sampled at the margins just outside [t0, t1]
            to allow for full linear interpolation in the [t0, t1] range
            
            Parameters
            ----------
            t0: float, default 0
                Start time
                
            t1: float, default 0
                End time
                
            Returns
            -------
            data: array
                Weather input values between `t0` and `t1`
        '''
        first_idx=  np.max( [np.argmin(np.abs(self.data[:,0] - t0)) - 1, 0] )
        last_idx=  np.min( [np.argmin(np.abs(self.data[:,0] - t1)) + 1, len(self.data)] )
        #if last_idx == first_idx: last_idx+= 1#If there is a single data point
        return self.data[first_idx:last_idx]
    
    def evaluate(self, t):
        '''
            Linearly interpolates the weather at a time `t`. For simulation, this is slower
            than using the get_inputs() method, so it is discouraged for that application
            
            Parameters
            ----------
            t: float
                Time at which we want to know the weather input values
                
            Returns
            -------
            data: array
                Wwather input values at time `t`
        '''
        t_arr= np.array(t, copy=False)
        return self._f(t_arr if t_arr.ndim == 2 else t_arr[None])
    
def operation_cost(results, get_daily_avg=False):
    '''
        Computes the operation cost of the BSM1 plant using the results Object
        obtained as a result of performing a simulation step on the BSM1 FMU
        
        Parameters
        ----------
        results: instance of PyFMI.common.algorithm_drivers.ResultBase
            PyFMI simulation results of the BSM1 FMU
        get_daily_avg: bool, default True
            If True, returns the operation cost as a daily average.
            If False, 7 array of instantaneous daily costs accounting for different
            operation costs will be returned
        
        Returns
        -------
        costs: float or tuple of 7 arrays
            If get_daily_avg == True, returns the operation cost as a daily average.
            Ifget_daily_avg ==  False, returns 7 arrays of instantaneous daily costs 
            accounting for different operation costs. The first array contains the
            actual instantaneous total costs, the second aray contains the exponentially-
            weighted avareage cost, and the rest are several internal costs (please
            refer to the implemententatio for more information)
    '''
    #Constants
    TARIFA_VALLE, TARIFA_LLANO, TARIFA_PUNTA = 0.073477, 0.102651, 0.122547
    IVA = 21 + 5
    electricity_cost= 0.1
    sludge_cost = 0.5 #euros/Kg
    
    NH_alpha, TN_alpha= 4, 2.7 #eur/kg
    NH_beta, TN_beta= 2.7 / 1000, 1.4 / 1000 #eur/1000 m3 -> eur/m3
    NH_beta_delta, TN_beta_delta= 12, 8.1 #eur/kg
    NH_lim, TN_lim= 4 / 1000, 12 / 1000 #mg/l -> kg/m3
    
    #Time
    time= results['time']
    day = time.astype(np.int)
    hour = 24 * (time - day)
    
    #Energy
    AE = results['tank3.AE'] + results['tank4.AE'] + results['tank5.AE']
    PE = 0.004 * results['ADsensor_Recycle.In.Q'] + \
         0.008 * results['ADsensor_Return.In.Q'] + \
         0.050 * results['ADsensor_Waste.In.Q']
    ME = results['tank1.ME'] + results['tank2.ME']
    
    #SP
    #TSS is in mg/l -> kg/m3 and Q in #m3/time
#     SP= (results['ADsensor_Waste.TSS'] * results['ADsensor_Waste.In.Q'] + 
#          results['ADsensor_Effluent.TSS'] * results['ADsensor_Effluent.In.Q']) / 1000 
    SP= (results['ADsensor_Waste.TSS'] + results['ADsensor_Effluent.TSS']) / 1000 
    energy = AE + PE + ME
    
    #Effluent fines
    Q_eff= results['ADsensor_Effluent.In.Q'] #Effluent flow rate: m3/time
    NH_eff= results['ADsensor_Effluent.In.Snh'] / 1000 #Amonia concentration: mg/l -> kg/m3
    TN_eff= results['ADsensor_Effluent.Ntot'] / 1000 #Total nitrogen: mg/l -> kg/m3
    EF= Q_eff * (
            (NH_eff <= NH_lim) * ( NH_alpha * NH_eff ) +\
            (NH_eff > NH_lim)  * ( NH_alpha * NH_lim + NH_beta + NH_beta_delta * (NH_eff - NH_lim) ) +\
            (TN_eff <= TN_lim) * ( TN_alpha * TN_eff ) +\
            (TN_eff > TN_lim)  * ( TN_alpha * TN_lim + TN_beta + TN_beta_delta * (TN_eff - TN_lim) ) \
            )
    
    #Electricity
#     electricity_cost = (1 + IVA / 100) * (TARIFA_LLANO * ( (hour >= 8) & (hour < 18) | (hour >= 22) ) +\
#                                           TARIFA_PUNTA * ( (hour >= 18) & (hour < 22) ) +\
#                                           TARIFA_VALLE * (hour < 8) )
    
    #Total
    operation_cost= electricity_cost * energy + sludge_cost * SP + EF
    if get_daily_avg:
        return operation_cost.mean() #(results['time'][-1]-results['time'][0])
    else:
        operation_cost_m= pd.Series(operation_cost).ewm(span=30.5/(results['time'][1]-results['time'][0])).mean().values
        return (operation_cost, operation_cost_m,
                electricity_cost*AE, electricity_cost*PE, electricity_cost*ME, sludge_cost*SP, EF)