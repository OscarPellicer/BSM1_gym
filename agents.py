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
This file contains the implementation of some of the most common Q-like agents, using
pytorch for the deep agents.
'''

import sys, os
import numpy as np
import abc
import torch
from datetime import datetime

from scipy.special import log_softmax
softmax= lambda x: np.exp(log_softmax(x)) #Normal softmax runs into precission issues

class QAgent(metaclass=abc.ABCMeta):
    def __init__(self, learning_rate, epsilon, discount, get_legal_actions,
                 name=None, path='./data'):
        """
            Base abstract class for Q-like RL agents to be used within OpenAI Gym
            
            Parameters
            ----------
            learning_rate: float
                How quick the agent learns new q-values, overwriting previous ones in the time-difference
                updates
            epsilon: float
                Exploration greediness
            discount: float
                Reward discount factor according to Sutton reward hypothesis
            get_legal_actions: function
                Function that takes an state as input, and retuns a list of valid actions in that state
            name: str or None, default None
                Name of the agent. If None, a unique agent name is assigned based on creation time
            path: str, default './data'
                Name of the path to save the agent (in case such functionality is implement by the agent)
                
            NOTE: Parameteres might have a slightly different interpretation depending on the kind of agent
        """
        self.get_legal_actions = get_legal_actions
        self.learning_rate = learning_rate
        self.epsilon = epsilon
        self.discount = discount
        self.path= path
        self.name= self.__class__.__name__ + \
            str(datetime.now())[:22].replace(':', '').replace('-', '').replace(' ', '').replace('.', '') \
                if name is None else name
        
    @abc.abstractmethod
    def train(self, s, a, r, s1, is_done):
        '''
            Trains the agent
            
            Parameters
            ----------
            s: list of 1D arrays or 1D array
                Environment state
            a: list of floats or float
                Action taken by the agent
            r: list of floats or float
                Environment reward
            s1: list of 1D arrays or 1D array
                Environment next state
            is_done: list of bool or bool
                True if the episode has finished
        '''
        pass
    
    @abc.abstractmethod
    def get_best_action(self, state):
        '''
            Returns the best action that the agent knows given a state
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            action: float
        '''
        pass
    
    @abc.abstractmethod
    def get_action(self, state):
        '''
            Returns an action following the agent's policy given a state.
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            action: float
        '''
        pass
    
    def save(self):
        '''
            Saves the agent weights.
        '''
        raise NotImplementedError()
        
    def load(self):
        '''
            Loads the agent weights
        '''
        raise NotImplementedError()
        
    @property
    def save_path(self):
        '''
            Path to the saved weights
        '''
        return os.path.join(self.path, self.name + '_weights.pkl')
    
class DumbQAgent(QAgent):
    def __init__(self, *args, default_action=1.2, **kwargs):
        '''
            Simplest possible agent, that always retuns the same default action
            for every state
            
            Parameters
            ----------
            default_action: float
                Action to be returned for every state
        '''
        self.default_action= default_action
        super().__init__(learning_rate=-1, epsilon=-1, discount=-1, 
                         get_legal_actions=lambda a: [default_action], **kwargs)
        
    def get_action(self, s):
        return self.default_action
    
    def get_best_action(self, s):
        return self.default_action
    
    def train(self, s, a, r, s1, is_done):
        pass
    
    def save(self):
        pass
    
    def load(self):
        pass

class QLearningAgent(QAgent):
    def __init__(self, *args, learning_rate=0.5, initial_qvalue=-1, **kwargs):
        '''
            Classical tabular Q-learning agent.
            Q-table starts empty. If a given state is not already in the Q-table, 
            it is automatically added and its value set to `initial_qvalue`
            
            Parameters
            ----------
            initial_qvalue: float, default -1
                Default inital q-value for all the states in the Q-table
        '''
        self._qvalues = {}
        self.intial_qvalue= initial_qvalue
        super().__init__(learning_rate, *args, **kwargs)

    def _check_qvalues(self, state, action):
        '''
            Checks whether a given state-value combination exists in the Q-table,
            and adds it to the table in case it does not. Then, it returns the `key`
            to be used for accessing the table. This key is needed since `state` might
            be an array, which is not directly hashable
            
            Parameters
            ----------
            state: 1D array
                Environment state
            action: float
                Action taken by the agent
                
            Returns
            -------
            key: hashable state representation
        '''
        key= np.array(state).tobytes()
        if key not in self._qvalues:
            self._qvalues[key]= {}
        if action not in self._qvalues[key]:
            self._qvalues[key][action]= self.intial_qvalue
        return key
            
    def get_qvalue(self, state, action):
        '''
            Gets a q-value from the Q-table
            
            Parameters
            ----------
            state: 1D array
                Environment state
            action: float
                Action taken by the agent
               
            Returns
            -------
            q_value: float
        '''
        key= self._check_qvalues(state, action)
        return self._qvalues[key][action]

    def set_qvalue(self, state, action, value):
        '''
            Sets a q-value into the Q-table
            
            Parameters
            ----------
            state: 1D array
                Environment state
            action: float
                Action taken by the agent
            value: float
                Value to set the indexed Q-value to
        '''
        key= self._check_qvalues(state, action)
        self._qvalues[key][action] = value


    def get_value(self, state):
        '''
            Computes the agent's estimate of V(s) using current q-values
            such that: V(s) = max_over_actions Q(state,action)
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            value: float
        '''
        possible_actions = self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
        return self.get_qvalue(state, self.get_best_action(state))

    def train(self, state, action, reward, next_state, is_done):
        '''
            Updates the Q-table using the time-difference update:
            Q(s,a) := (1 - alpha) * Q(s,a) + alpha * (r + gamma * V(s'))
            
            Parameters
            ----------
            s: list of 1D arrays or 1D array
                Environment state
            a: list of floats or float
                Action taken by the agent
            r: list of floats or float
                Environment reward
            s1: list of 1D arrays or 1D array
                Environment next state
            is_done: list of bool or bool
                True if the episode has finished
        '''
        for s, a, r, sn, done in zip(state, action, reward, next_state, is_done):
            q= (1 - self.learning_rate) * self.get_qvalue(s, a) +\
                     self.learning_rate * (r + self.discount * self.get_value(sn))
            if np.isnan(q):
                raise RuntimeError('Agent tried to update a value as NaN for state, '+\
                                   'action, reward, next_state, is_done:', s, a, r, sn, done)
            self.set_qvalue(s, a, q)
    
    def get_best_action(self, state):
        possible_actions = self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
            
        return possible_actions[np.argmax([self.get_qvalue(state, action) for action in possible_actions])]

    def get_action(self, state):
        '''
            Compute the action to take in the current state, including exploration using
            the epsilon-greedy policy: With probability self.epsilon, take a random action, 
            otherwise take the best action
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            action: float
        '''
        possible_actions = self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
        return np.random.choice(possible_actions) if np.random.random() < self.epsilon \
                                                  else self.get_best_action(state)
    
    def save(self):
        import pickle
        pickle.dump(self._qvalues, open(self.save_path,'wb'))
        
    def load(self):
        import pickle
        self._qvalues= pickle.load(open(self.save_path,'rb'))
    
class DeepQLearningAgent(QAgent):
    def __init__(self, network, *args, learning_rate=1e-4, **kwargs):
        '''
            Deep Q-Learning agent implemented using pytorch and updated using gradient descent
            
            Parameters
            ----------
            network: subclass of torch.nn.Module
                Neural network that takes a state as input, and produces the Q-values associated
                with all possible actions for that state as output
        '''
        self.network= network
        self.optimizer= torch.optim.Adam(network.parameters(), lr=learning_rate)
        super().__init__(learning_rate, *args, **kwargs)

    def get_value(self, state):
        '''
            Computes the agent's estimate of V(s) using current q-values
            such that: V(s) = max_over_actions Q(state,action)
            
            Parameters
            ----------
            state: N-D array
                Environment state(s)
                
            Returns
            -------
            values: pytroch array of float(s)
        '''
        possible_actions= self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
        q_values = self.network(state)#.detach().numpy()
        #We need to get the values, because max also returns the positions
        return torch.max(q_values, dim=-1).values

    def train(self, states, actions, rewards, next_states, is_done):
        '''
            Updates the weigths of the Neural Network using the time-difference scheme
            and gradient descent. Gradient is not allowed to flow for the target Q-values
            as is common for stability
            
            Parameters
            ----------
            states: list of 1D arrays or 1D array
                Environment state
            actions: list of floats or float
                Action taken by the agent
            rewards: list of floats or float
                Environment reward
            next_states: list of 1D arrays or 1D array
                Environment next state
            is_done: list of bool or bool
                True if the episode has finished
        '''
        #Extract action indices
        actions_indices= np.array([np.where(np.abs(self.get_legal_actions(None)-a) < 0.001) for a in actions]).flatten()
        
        #Everything to torch
        states = torch.tensor(states, dtype=torch.float32)    # shape: [batch_size, state_size]
        actions_indices = torch.tensor(actions_indices, dtype=torch.long)    # shape: [batch_size]
        rewards = torch.tensor(rewards, dtype=torch.float32)  # shape: [batch_size]
        next_states = torch.tensor(next_states, dtype=torch.float32) # shape: [batch_size, state_size]
        is_done = torch.tensor(is_done, dtype=torch.uint8)  # shape: [batch_size]

        #Get q-values for chosen actions 
        predicted_qvalues = self.network(states) # [batch_size, n_actions]
        predicted_qvalues_for_actions = predicted_qvalues[range(states.shape[0]), actions_indices] # [batch_size]

        #Compute V*(next_states) and "target q-values" for loss
        next_state_values= self.get_value(next_states) #[batch_size]
        assert next_state_values.dtype == torch.float32
        target_qvalues_for_actions = rewards + self.discount * next_state_values

        #At the last state we shall use simplified formula: Q(s,a) = r(s,a) since s' doesn't exist
        target_qvalues_for_actions = torch.where(is_done, rewards, target_qvalues_for_actions)

        #Mean squared error loss to minimize
        loss = torch.mean((predicted_qvalues_for_actions -
                           target_qvalues_for_actions.detach()) ** 2)

        #Train
        self.optimizer.zero_grad()
        loss.backward()
        self.optimizer.step()
    
    def get_best_action(self, state):
        possible_actions= self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
        state = torch.tensor(state[None], dtype=torch.float32)
        q_values = self.network(state).detach().numpy()

        return possible_actions[np.argmax(q_values)]

    def get_action(self, state):
        '''
            Compute the action to take in the current state, including exploration using
            the epsilon-greedy policy: With probability self.epsilon, take a random action, 
            otherwise take the best action
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            action: float
        '''
        possible_actions= self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
        state = torch.tensor(state[None], dtype=torch.float32)
        q_values = self.network(state).detach().numpy()

        return np.random.choice(possible_actions) if np.random.random() < self.epsilon \
               else possible_actions[np.argmax(q_values)]
    
    def save(self):
        torch.save(self.network.state_dict(), self.save_path)
        
    def load(self):
        self.network.load_state_dict(torch.load(self.save_path))
                                                #map_location=torch.device('cpu')))
        
class EVSarsaAgent(QLearningAgent):
    def __init__(self, *args, use_softmax=True, **kwargs):
        ''' 
            An agent that implements Expected Value SARSA
            
            Parameters
            ----------
            use_softmax: bool, default True
                Use softmax function as exploration policy, instead of epsilon-greedy
                If use_softmax == True, then epsilon is the scaling constant by which
                the q-values are divided before passing them through the softmax funtion
                to produce the probabilities of every action given a state. Hence with a small
                epsilon value, the best action will almost always be chosen, and with a large
                epsilon value, all actions will have the same probability of being chosen
            
        ''' 
        self.use_softmax= use_softmax
        super().__init__(*args, **kwargs)
        
    def get_value(self, state):     
        '''
            Returns Vpi(s) for current state under softmax or epsilon-greedy policy.
            V_{pi}(s) = sum_{over a_i} {pi(a_i | s) * Q(s, a_i)}
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            values: float
        '''
        possible_actions = self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)

        q_s_a= np.array([self.get_qvalue(state, action) for action in possible_actions])
        if self.use_softmax:
            pi_s_a= softmax(q_s_a / max([self.epsilon, 0.0001]))
        else:
            best_action= self.get_best_action(state)
            pi_s_a= [(self.epsilon / len(possible_actions)) + \
                     ((1-self.epsilon) if best_action == action else 0) \
                     for action in possible_actions] 
        return np.sum([pi * q for pi, q in zip(pi_s_a, q_s_a)])
        
    def get_action(self, state):
        '''
            Compute the action to take in the current state, including exploration using
            the either epsilon-greedy policy (if use_softmax==False) or softmax policy
            
            Parameters
            ----------
            state: 1D array
                Environment state
                
            Returns
            -------
            action: float
        '''
        possible_actions = self.get_legal_actions(state)
        if len(possible_actions) == 0:
            raise RuntimeError('No possible actions at state:', state)
            
        if self.use_softmax:
            q_s_a= np.array([self.get_qvalue(state, action) for action in possible_actions])
            pi_s_a= softmax(q_s_a  / max([self.epsilon, 0.0001]))
            return np.random.choice(possible_actions, p=pi_s_a)
        else:       
            return np.random.choice(possible_actions) if np.random.random() < self.epsilon \
                                                      else self.get_best_action(state) 