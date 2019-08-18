### Application Gateway
```
Application Gateway
	Backend pools - configure backend vm ip
	HTTP settings - configure all the exposed port from backend vm
	Frontend Ip Configuration - configure DNS/Public IP
	Listners - configure http(80) or https (443) listeners and add pfx ssl cert
	Rules - connect listeners —BackendPools—HttpSettings or setup any redirection rules
```
