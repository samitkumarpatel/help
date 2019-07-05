# Maven

### Download a artifact from Nexus repository via mvn
```
mvn -s ~/.m2/settings.xml dependency:get -DremoteRepositories=http://my.nexus.net:10001/repository/maven-hosted-snapshots -DgroupId=com.my.project -DartifactId=my-project -Dversion=0.0.1-SNAPSHOT -Dtransitive=false -Dpackaging=war
```
make sure you have correct settings.xml file with all necessary details like 
```
<?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
   <mirrors>
      <mirror>
         <id>nexus</id>
         <mirrorOf>*</mirrorOf>
         <name>Main mirror for all devops managed repositories</name>
         <url>http://my.nexus.net:10001/repository/maven-group-public/</url>
      </mirror>
   </mirrors>
   <servers>
     <server>
       <id>XXXX.snapshots</id>
       <username>uname</username>
       <password>psswd</password>
     </server>
     <server>
       <id>XXXX.releases</id>
       <username>uname</username>
       <password>password</password>
     </server>
     <server>
       <id>thirdparty</id>
       <username>uname</username>
       <password>password</password>
     </server>
  </servers>
</settings>
```
### download the package into specific output directory
```
mvn -s ~/.m2/settings.xml dependency:get -DremoteRepositories=http://my.nexus.net:10001/repository/maven-hosted-snapshots -DgroupId=com.my.project -DartifactId=my-project -Dversion=0.0.1-SNAPSHOT -Dtransitive=false -Dpackaging=war -DoutputDirectory=/path/to/dir
```
