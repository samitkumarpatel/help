# Jenkins Tips and Trick
[click](https://wiki.jenkins.io/display/JENKINS/Jenkins+Script+Console) to get an in-details idea for jenkjns groovy script 

* Get Environment variable details
```
println System.getenv("HOME")
```
* Excure shell/bash command on Groovy console
```
println "ls -a".execute().text
```
