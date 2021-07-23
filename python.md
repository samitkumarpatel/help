### IDE
#### Python Interpretor setup on pycharm
File->Settings->Project:Framework→Project Interpreter  - Select your python virtual environment

#### Setup a dependent library for better navigation or go to option
File->Settings->Project:Framework→Project Structure - is for library folder setup is for "go to" functionality for pycharm.
( select the folder you believe that , thats a library for your python project and right click and select source)

### How to see what inside a python module from command line
```
dir(moduleName)

example-
import os
dir(os)
```

### pip package
* [nose] (https://pypi.org/project/nose/1.3.7/)
* [behave] (https://pypi.org/project/behave/1.2.6/)

Comes a long with python 3.x 
* [argparse] (https://docs.python.org/3/library/argparse.html) - helful library for py scripting parameter 


# pip

pip by default comes along with python installation as module. For some distro you have to installed seperately

### pip usage 
```sh
pip3 --help
python3 -m pip3 install packageName
```

### config 
If you are dealing with private pip registry make sure you have below config in place

```sh
[global]
index = https://USERNAME:PASSWORD@pypiregistry.net/repository/pypi-group-internal/pypi
index-url = https://USERNAME:PASSWORD@pypiregistry.net/repository/pypi-group-internal/simple
extra-url = https://USERNAME:PASSWORD@pypiregistry.net/repository/pypi-group-internal/pypi
 
[install]
ignore-installed = true
trusted-host = pypiregistry.net
```
