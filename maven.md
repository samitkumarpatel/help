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
### After Download, if you want to copy that to a specific output directory use this
```
mvn dependency:copy -Dartifact=com.artifact.net:artfactId:0.0.1-SNAPSHOT:war -DoutputDirectory=/home/samitkumarpatel/Downloads/
```


### Maven Tips and Trick around settings.xml

```
mvn --encrypt-master-password <any_password>
 
 
----------------------
security-settings.xml
---------------------
<settingsSecurity>
  <master>{GENERATED_TEXT}</master>
</settingsSecurity>
 
mvn --encrypt-password <your_nexus_password>
 
-------------
settings.xml
-------------
 <?xml version="1.0" encoding="UTF-8"?>
<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0 http://maven.apache.org/xsd/settings-1.0.0.xsd">
    <mirrors>
        <mirror>
            <id>my-nexus</id>
            <mirrorOf>*</mirrorOf>
            <name>Main mirror for all devops managed repositories</name>
            <url>http://my.nexus.net:10001/repository/maven-group-public/</url>
        </mirror>
    </mirrors>
    <servers>
        <server>
            <id>my-nexus</id>
            <username>yourUsername</username>
            <password>{ENCRYPTEDPASSWORD}</password>
        </server>
        .....
    </servers>
</settings>
 
 
If the file are outside ~/.m2/ , use below command instead.
 
mvn --batch-mode -s /path/to/settings.xml -Dsettings.security=/path/to/settings-security.xml clean install
```

### Versioning

```
mvn build-helper:parse-version versions:set@major

mvn build-helper:parse-version versions:set@minor

mvn build-helper:parse-version versions:set@patch

mvn versions:set -DnewVersion=1.0.3-SNAPSHOT
```
### Read System property from command line and make use of it in the Java application

```
Command Line
-------------
mvn goal -DNAME=samit

pom.xml
----------------
<plugin>
   <groupId>org.apache.maven.plugins</groupId>
   <artifactId>maven-surefire-plugin</artifactId>
   <configuration>
      <systemPropertyVariables>
         <NAME>amit</NAME>
      </systemPropertyVariables>
   </configuration>
</plugin>

Test Class
-----------
@Test
public void test() {
   assertEquals("SAMIT", System.getProperty("NAME"));

}
```
