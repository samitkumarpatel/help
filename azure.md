### Application Gateway
```
Application Gateway
---------------------
Backend pools - configure backend vm ip
HTTP settings - configure all the exposed port from backend vm
Frontend Ip Configuration - configure DNS/Public IP
Listners - configure http(80) or https (443) listeners and add pfx ssl cert
Rules - connect listeners —BackendPools—HttpSettings or setup any redirection rules
```

### Vnet / Subnet ip range tips
```
vnet ip range - 10.0.0.0/16
snet01 - 10.0.0.0/24
snet02 - 10.0.1.0/24
snet03 - 10.0.2.0/24
snet04 - 10.0.3.0/24
```
