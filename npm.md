# npm

npm is a package manager for node js

If you are dealing with a private npm registry or repo , make sure you have this in place to make the things works for you
- .npmrc on your HOME or in the project location
- a valid credential and registry url on .npmrc

### .npmrc file 

```sh 
# Sets location of the npmcache folder. Defaults to "%AppData%\npm-cache" on Windows and "~/.npm" on Posix
cache=/path/to/npmcache
# Whether or not to do SSL key validation when making requests to the registry via https. Default: true
strict-ssl=false
 
always-auth=true
email=YOUR_EMAIL_ID@domain.net
registry=https://npm.registry.net/repository/npm-group-internal/
_auth=AUTH_TOKEN
scripts-prepend-node-path=true
```

make sure you have replaced AUTH_TOKEN. This can be generate like below:

from web browser:
```sh
open browser console

btoa("username:password")
```

from command line:
```sh

echo -n 'username:password' | openssl base64
```

### generate .npmrc automatically by using npm command

```sh

npm login --registry https://npm.registry.net/repository/npm-group-internal/
npm set registry https://npm.registry.net/repository/npm-group-internal/ --global
```
