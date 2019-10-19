# Jenkins Tips and Trick
- Automation
[click](https://github.com/samitkumarpatel/cicd-tools/tree/master/jenkins.v1) To get an idea around Jenkins Automation

[click](https://wiki.jenkins.io/display/JENKINS/Jenkins+Script+Console) to get an in-details idea for jenkjns groovy script 

- Get Environment variable details
```
println System.getenv("HOME")
```
- Excure shell/bash command on Groovy console
```
println "ls -a".execute().text
```
- Decrypt Jenkins credential from encrypted text
```
println(hudson.util.Secret.decrypt("{GET_THE_SECRET_FROM_JENKINS_CREDENTIAL.XML==}"))
```
- Read a file from Jenkins groovy console
```
new File(System.getenv("HOME")+"/credentials.xml").text
```
- get installed plugins
```
println(Jenkins.instance.pluginManager.plugins)
```

### Intellij setup to work with Jenkinsfile
[blog to follow](http://vgaidarji.me/blog/2018/07/30/working-with-jenkinsfile-in-intellij-idea/)

* Create a file called Jenkinsfile in the root folder of project
* Open that project in Intellij IDE
* Associate Jenkinsfile in Intellij as groovy
* Tips to associate Jenkinsfile in Intellij
* `Intellij IDEA` - `Preferences` - `Editor` - `File Types` - select groovy from `Recognized File Type` -  select `+` from `Registered Patterns` and add Jenkifile init - `save`
* Configure Groovy SDK to enable autocompletion in Jenkinsfile
* Use `pipeline.gdsl` to have Pipeline syntax autocompletion in Jenkinsfile
* process to get `pipeline.gdsl` follow below steps
* inteall Jenkins and install pipeline plugins
* create a pipeline job - save that job
* access the job url (http://localhost:8080/job/pipeline-job-you-just-created/pipeline-syntax/)
* click on ` IntelliJ IDEA GDSL` - copy that content
* place pipeline.gdsl somewhere in src folder in your project so that it’s recognized properly
* add pipeline.gdsl to .gitignore to reduce noise in the repo
If the autocompletion does not work, follow steps
*Creating a folder /src/main/groovy, putting the file in there and marking it as a sources root (right click on the folder -> Mark directory as -> Sources Root) did the trick.
* File > New > Project from Existing Sources…), a message popped up: DSL descriptor file has been change and isn’t currently executed.

### To Get Slave Secret, Below is the curl command
```
curl -L -s -u USERNAME:PASSWORD -H "Jenkins-Crumb:dac7ce5614f8cb32a6ce75153aaf2398" -X GET http://HOST:PORT/computer/SLAVENAME/slave-agent.jnlp | sed "s/.*<application-desc main-class=\"hudson.remoting.jnlp.Main\"><argument>\([a-z0-9]*\).*/\1/"
```
