# Weblogic Deployment

There are many ways , you can automate weblogic deployment like
- wlst
- weblogic.Deployer from weblogic.jar
- maven plugins
- and many more way

### wlst

Create two files with name `wlst_setup.sh` and `deploy.py`.

wlst_setup.sh - is for to invoke the python script deploy.py with expected parameter.

deploy.py - contain the wlst scripting logic for deployment

- wlst_setup.sh 
```sh
#!/bin/bash
echo "preReq set up..."
export JAVA_HOME=/home/spa349/Tools/jdk1.6.0_21
export MW_HOME=/home/spa349/Tools/wls1036_dev
. $MW_HOME/wlserver/server/bin/setWLSEnv.sh

echo "Invoking wlst..."
java -Xmx1g weblogic.WLST -skipWLSModuleScanning $*
```
- deploy.py

```python
#!/bin/python

print('Deployment start with wlst')
connect('weblogic','weblogic@1','t3://localhost:7001')
deploy('gms','/path/to/warfile/app.war',target='AdminServer')
startApplication('serviceNameFromWeblogicConsole')

#stopApplication('serviceNameFromWeblogicConsole')
#undeploy('serviceNameFromWeblogicConsole')

```

### weblogic.Deployer from weblogic.jar

Get the weblogic.jar from a supported weblogic version

keep it somewhere in the class path than execute below:

**Example**
```sh
java -cp /path/to/wlserver/server/lib/weblogic.jar weblogic.Deployer -examples
```

**deploy**
```sh
java -cp /path/to/wlserver/server/lib/weblogic.jar weblogic.Deployer -verbose -noexit -adminurl localhost:7001 \
    -username weblogic -password weblogic123 -name hello-world-ee01 -source /path/to/hello-world-ee-1.0.0-SNAPSHOT.war -stage -upload -deploy -timeout 300
```

**redeploy**
```sh
java -cp /path/to/wlserver/server/lib/weblogic.jar weblogic.Deployer -verbose -noexit -adminurl localhost:7001 -username weblogic \
  -password weblogic123 -name hello-world-ee01 -source /path/to/hello-world-ee-1.0.0-SNAPSHOT.war -stage -upload -redeploy -timeout 300
```

**undeploy**
```sh
java -cp /path/to/wlserver/server/lib/weblogic.jar weblogic.Deployer -verbose -noexit -adminurl localhost:7001 \
  -username weblogic -password weblogic123 -name hello-world-ee-1.0.0-SNAPSHOT -undeploy -timeout 300
```

### maven plugins
NA
