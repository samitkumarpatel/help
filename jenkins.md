# Jenkins Tips and Trick

* Get Environment variable details
```
println System.getenv("HOME")
```
* Excure shell/bash command on Groovy console
```
println "ls -a".execute().text
```
