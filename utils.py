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
This file contains some utilities that do not match any concrete category
'''
import numpy as np
from pyfmi.common import core
def patch_pyfmi_interpolator():
    '''
        Running this function, the internal pyFMI interpolator is hot-patched to use
        TrajectoryInterpolation instead
    '''
    core.TrajectoryLinearInterpolation= TrajectoryInterpolation

from scipy import interpolate
class TrajectoryInterpolation(core.Trajectory):
    def __init__(self, abscissa, ordinate, *args, kind='slinear', extrapolate=True, **kwargs):
        '''
            General interpolator for use within the PyFMI library
            
            Parameters
            ---------
            abscissa: array
                1D numpy array of T time steps
            ordinate: array
                T x F (features) numpy array with the values of the F features at each
                time step provided in `abscissa`
            kind: str, default 'slinear'
                Specifies the kind of interpolation as a string or as an integer 
                specifying the order of the spline interpolator to use. The string has 
                to be one of ‘linear’, ‘nearest’, ‘nearest-up’, ‘zero’, ‘slinear’, 
                ‘quadratic’, ‘cubic’, ‘previous’, or ‘next’. ‘zero’, ‘slinear’, 
                ‘quadratic’ and ‘cubic’ refer to a spline interpolation of zeroth, 
                first, second or third order; ‘previous’ and ‘next’ simply return 
                the previous or next value of the point; ‘nearest-up’ and ‘nearest’ 
                differ when interpolating half-integers (e.g. 0.5, 1.5) in that 
                ‘nearest-up’ rounds up and ‘nearest’ rounds down. Default is ‘linear’.
            extrapolate: bool, default True
                If True, perform extrapolation. If False, hold first/last value
            
            NOTE: To keep the original TrajectoryLinearInterpolation behaviour, set:
            kind='linear' & extrapolate=False. Different setups lead to different speeds
            and behaviours depeding on the problem and the data.
        '''
        #Check inputs
        if abscissa.shape[0] == 0:
            raise ValueError('Inputs are empty')
        elif abscissa.shape[0] == 1:
            self._f= lambda x: ordinate
        else:
            if extrapolate:
                self._f= interpolate.interp1d(abscissa, ordinate, kind=kind, copy=False, 
                                              axis=0, assume_sorted=True, fill_value='extrapolate')
            else:
                fill_value= (ordinate[0], ordinate[-1])
                self._f= interpolate.interp1d(abscissa, ordinate, kind=kind, copy=False, 
                                              axis=0, assume_sorted=True, bounds_error=False,
                                              fill_value=fill_value)
        super().__init__(abscissa, ordinate, *args, **kwargs)
    
    def eval(self, t):
        """
            Evaluate the trajectory at the specifed abscissa(s).

            Parameters
            ----------
            t: array, int
                1D numpy array, or scalar number, containing N abscissa value(s).

            Returns
            -------
            2D N x F array containing the ordinate values corresponding to t.
        """        
        t_arr= np.array(t, copy=False)
        return self._f(t_arr if t_arr.ndim == 2 else t_arr[None])
    
class MatHandler():
    '''
        Very simple class for reading and plotting the results from a Modelica .mat file
    '''
    def __init__(self, model_name):
        '''
        Parameters
        ----------
        model_name: str
            Name of the .mat file
        '''
        from DyMat import DyMatFile
        file_name= model_name# + '_res.mat'
        self.mat= DyMatFile(file_name)
        
        print(' > Read:', file_name)
    
    def plot(self, var_names=None, plot_indep=True):
        '''
            Plots the chosen variables `var_names`
            
            Parameters
            ----------
            var_names: list or None, default None
                List of variable names to plot, or None to plot all
            plot_indep: bool, default True
                If True, each plot is produced in a new Figure
            
        '''
        import matplotlib.pyplot as plt
        if var_names is None:
            var_names= self.mat.names()
        if not plot_indep:
            plt.figure()
        for block, names_in_block in self.mat.sortByBlocks(self.mat.names()).items():
            for name in names_in_block:
                if name in var_names:
                    t= self.mat.abscissa(block, valuesOnly=True)
                    description, data= self.mat.description(name), self.mat.data(name)
                    if plot_indep: 
                        plt.figure()
                    plt.plot(t, data, label=name + ': '+ description)
                    plt.ylabel(name)
                    plt.xlabel('t')
                    plt.title(description + ' (Block %d)'%block)
        if not plot_indep:
            plt.legend()
                  
    @property
    def names(self):
        '''
            Names of all the variables
        '''
        return list(self.mat.names())
    
    @property
    def descriptions(self):
        '''
            Description of all the variables
        '''
        return [self.mat.description(v) for v in self.mat.names()]
    
class Runner():
    def __init__(self, params=''):
        '''
            Simple class to run an OMPython command
            
            Example:
            >>> R= Runner()
            >>> R.run('translateModelFMU("BSM1.BSM1.ClosedLoop", version="2.0", fmuType="me")')
            
            Parameters
            ----------
            params: str, default ''
                Parameters to pass to OMCSessionZMQ initializer
        '''
        from OMPython import OMCSessionZMQ
        self.omc = OMCSessionZMQ(params)
        print(self.omc.sendExpression("getVersion()"))
    
    def run(self, command, print_result=True, print_command=True, print_error=True):
        '''
            Runs a command
            
            Parameters
            ----------
            command: str
                Command to run
            print_result: bool, default True
                Print the response
            print_command: bool, default True
                Print the command
            print_error: bool, default True
                If no result was returned, check for errors
        '''
        if print_command: 
            print('\n > ' + command)
        result= self.omc.sendExpression(command)
        if print_result: 
            if isinstance(result, dict):
                for k, v in result.items():
                    print('%s: %s'%(k,v))
            else:
                print(result)
            if not result and print_error:
                print('ErrorString:', self.run('getErrorString()', print_error=False))
                
class EasyTimer():
    '''
        Very simple timer class
    '''
    def __init__(self):
        self.reset()
        
    def time(self, title='Time elapsed'):
        '''
            Prints the elapsed time since the instance was created, or since the 
            method reset() was last called
            
            Parameters
            ----------
            title: str, default 'Time elapsed'
                Message to show alongside the ellpased time
        '''
        self.last= self.current
        self.current= datetime.now()
        print('%s: %s'%(title, self.current - self.last))
        
    def reset(self):
        '''
            Reset the timer
        '''
        self.current= datetime.now()
        self.last= None