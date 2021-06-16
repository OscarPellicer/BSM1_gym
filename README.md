# BSM1_gym
Transform a Modelica model (BSM1) into a Python OpenAI Gym environment, and optimize operation cost using reinforcement learning agents.

Imporant note: The code here was developed to simulate a Modelica implementation of the [Wastewater Treatment Plant Benchmark Simulation Model No. 1](https://www.iea.lth.se/publications/Reports/LTH-IEA-7229.pdf) (BSM1), which unfortunately cannot *yet* be publicly released. Still, it provides with the tools and instructions to adapt any Modelica model to be integrated within the OpenAI Gym API and be used for training reinforcement learning agents on it.

This README provides the general instructions on how to:

 1. Run a Modelica model using [Open Modelica](https://www.openmodelica.org/) from Python ([OMPython](https://github.com/OpenModelica/OMPython))
 1. Convert the model to the [FMU](https://fmi-standard.org/) format and simulate it directly within Python using [PyFMI](https://github.com/modelon-community/PyFMI)
 1. Create an OpenAI environment for the FMU, and use a Reinforcement Learning agent to interact with the model
 
All the steps were tested on Windows 10 64bits, but they should work for other OSs as well.

## 0. Preparation steps
 - Download and install Miniconda for Python 3.7: https://docs.conda.io/en/latest/miniconda.html
 - Once installed, open an Anaconda prompt, and create a Modelica environmet: `conda create -n modelica python=3.7`
 - Activate it: `conda activate modelica`
 - Install some libraries that will be neeed: 
 `conda install numpy matplotlib psutil pyzmq scipy future git pandas seaborn scikit-learn tqdm` and `conda install -c conda-forge ffmpeg`
 - Clone this repository to your computer and navigate to it:
```{bash}
git clone https://github.com/OscarPellicer/BSM1_gym.git
cd BSM1_gym
```
 

## 1. Interacting with OpenModelica models through OMPython
 - Download and install OpenModelica: https://www.openmodelica.org/
 - To run Modelica models from Python (non-interactively), we can install and use the OMPython library:
 - Install: `python -m pip install -U https://github.com/OpenModelica/OMPython/archive/master.zip`
 - We have created a simplified runner for OpenModelica commands in Python, `Runner`, which can be found in `utils.py`. Testing on the bouncing ball model:
```{python}
from utils import Runner
R= Runner()
R.run("loadModel(Modelica)")
R.run("loadFile(getInstallationDirectoryPath() + \"/share/doc/omc/testmodels/BouncingBall.mo\")")
R.run("instantiateModel(BouncingBall)")
R.run("simulate(BouncingBall, stopTime=3.0)")
```
 - This will generate a `.mat` output file that can be read with [DyMat](https://github.com/jraedler/DyMat), which has been included in this repository. Furthermore, class `MatHandler` uses DyMat to simplify the process of reading and plotting simulation results:
```{python}
from utils import MatHandler
m= MatHandler('BouncingBall_res.mat')
print('Variable names:', m.names)
m.plot(['h', 'v', 'der(v)'], plot_indep=False)
```
 
## 2.  Creating a FMU and simulating it using PyFMI
 - PyFMI allows to simulate FMUs in Python
 - Install `pyfmi`: `conda install -c conda-forge pyfmi`
 - Then, create the FMU from Python using OMPython:
```{python}
model_name= "BouncingBall"
R.run("loadModel(Modelica)")
R.run("loadFile(getInstallationDirectoryPath() + \"/share/doc/omc/testmodels/BouncingBall.mo\")")
R.run("instantiateModel(BouncingBall)")
R.run('translateModelFMU(%s, version="2.0", fmuType = "me")'%model_name)
```
 - And simualte it using PyFMI:
```{python}
from pyfmi import load_fmu
model= load_fmu('%s.fmu'%model_name)
res= model.simulate(final_time=3)
```

- We can do the same for our custom model
```{python}
# Create a FMU using OMPython
base_path= '../WasteWaterResearch'
model_name= 'BSM1.BSM1_ClosedLoop_Sensor'
R.run('loadModel(Modelica,{"3.2.3"},true,"",false)')
R.run('loadFile("%s/WasteWater/package.mo","UTF-8",true,true,false)'%base_path)
R.run('loadFile("%s/BSM1/package.mo","UTF-8",true,true,false)'%base_path)
R.run('disableNewInstantiation()')
R.run('translateModelFMU(%s, version="2.0", fmuType = "me")'%model_name)

# Import PyFMI, set the options so that sparse solver is not used, and simulate
from pyfmi import load_fmu
model = load_fmu('%s.fmu'%model_name)
opts = model.simulate_options() 
opts["CVode_options"]["linear_solver"] = "DENSE"
res = model.simulate(final_time=1, options=opts)
```

- `pyFMI` allows an easy interface to the results, without having to read the generated `.mat` file:
```{python}
# To see the name of all variables
res.keys()
# To access the values of one of them
res['time']
# To access final value
res.final('time')
# To get the description
res.result_data.description[res.keys().index('time')]
```

## 3. Creating an OpenAI Gym environment and training a Reinforecement Learning agent on it
 - Install OpenAI Gym: `conda install -c conda-forge gym`
 - Note that `gym` might not work properly if its not run from the base Anaconda environment, which is a bug. If this happens to you, you might want to install all necessary packages in the base environment, althgough it should not be generally necessary.
 - If you intend to use the deep learning agents, you might want to install pytorch too. You can follow the instructions here: https://pytorch.org/get-started/locally/
 - An example of setting up an environment (BSM1), and training an agent to optimizar operation cost on it can be found in [Training.ipynb](Training.ipynb)
 - Obviously, to run the Notebook, Jupyter Notebook must be first installed: `conda install jupyter`.
 - To adapt it to your own needs, you should first implement a class similar to `BSM1Env` found in `BSM1Envs/bsm1_env.py`. This class implements the `ModelicaEnv` class, which, in turn inherits from `gym.Env`, which is the parent class for all Gym environments.
 - You should also modify some of the varaibles in [Training.ipynb](Training.ipynb), such as `base_path`, `model_name`, `action_names`, `env_name`, `entry_point`, `output_names` to adapt them to your own model.
 - The rest of the Python files in the repository are used by [Training.ipynb](Training.ipynb), and provide the following functionality:
   - `agents.py`: This file contains the implementation of some of the most common Q-like agents, using
pytorch for the deep agents.
   - `wrappers.py`: This contains some useful wrappers for OpenAI environments to help integrate them
with different kinds of agents.
   - `training.py`: This file contains all the code for letting an agent interact and learn from the evironment
as well as to plot the evolution of the values of the variables over time.
 - Please note that the Notebook will not run as is, since the required FMU has ot been uploaded to this repository (yet).

This work is part of my end-of-degree project for my Computer Science degree at [UNED University](https://www.uned.es/), which can be found at [*not yet available*]() (in spanish).
