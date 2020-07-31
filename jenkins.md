# jenkins

### Jenkins Job Builder

jenkins job builder. [click](https://pypi.org/project/jenkins-job-builder/) for more details

jobs/template.yml
```yml
- job-template:
    name: '{repo}'
    description: 'Multibranch build for {repo-owner}/{repo} {essential|}'
    project-type: multibranch
    prune-dead-branches: True
    number-to-keep: '10'
    days-to-keep: '10'
    script-path: '{jenkinsfile}'
    scm:
      - bitbucket:
          repo-owner: '{repo-owner}'
          repo: '{repo}'
          server-url: 'https://bitbucket.org'
          credentials-id: 'CloudBB'
          discover-branch: all
          discover-pr-origin: mergeOnly
          checkout-over-ssh:
            credentials: 'CloudBBSSH'
          wipe-workspace: false
```

jobs/projectX.yml
```yml
---
- project:
    name: 'Multibranch build pipeline '
    jenkinsfile: 'Jenkinsfile'
    repo-owner: 'PROJECT_ID'
    repo: &projectX-list
        - projectX-repo01
        - projectX-repo02
        - projectX-repo02
    jobs:
        - '{repo}'

- view:
    name: Project X
    view-list: list
    description: Project X Build and Deploy jobs
    job-name: *projectX-list
```
jobs/pipeline.yml

```yml
 - job:
    name: 'ProjectX_Deploy'
    description: 'ProjectX'
    concurrent: true
    properties:
      - build-discarder:
          days-to-keep: 7
      - rebuild:
          rebuild-disabled: false
    parameters:
      - choice:
          name: repository
          choices: 
            - 1
            - 2
            - 3
          description: 'Project X repo'
      - string:
          name: random_param_01
          default: latest
          description: "Some Random One"
      - choice:
          name: random_param_02
          choices:
            - dev
            - test
          description: "some random param 02"
      - bool:
          name: debug
          default: false
          description: 'debug'
    project-type: pipeline
    dsl: |
      node() {
        ......
      }
    # pipeline-scm:
    #   script-path: Jenkinsfile_Deploy
    #   scm:
    #     - git:
    #         branches:
    #           - master
    #         url: 'https://github.com/samitkumarpatel/x.git'
    #         credentials-id: 'GITHUB_CRED'
    #         skip-tag: true
    #         wipe-workspace: false
    #   lightweight-checkout: true
```

Once you have above , you need server details config file

config.ini
```ini
[job_builder]
allow_duplicates = False
keep_descriptions = False
ignore_cache = True
recursive = False
update=all
[jenkins]
query_plugins_info = False
[jenkins_remote]
query_plugins_info = False
url = http://jenkins.utl.net:PORT
```
To load the job, use below command
```sh
python3 -m venv .venv
source .venv/bin/activate
pip install jenkins-job-builder

jenkins-jobs --conf config.ini --server jenkins_remote --user XXX --password XXX update jobs/projectX.yml

# running in Jenkins it self and wanted to load all the job inside job/ folder
jenkins-jobs --conf config.ini --user XXX --password XXX update jobs/
```



### Tricks and Tips
