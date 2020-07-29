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
