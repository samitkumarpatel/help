# IDE Setup To Work With Jenkinsfile

### Intellij
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
