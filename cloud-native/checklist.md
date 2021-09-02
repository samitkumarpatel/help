## Infrastructure  
- secure by design :
Security by design is an approach to cybersecurity that enables an organization to automate its data security controls and formalize the design of its infrastructure.
- Infrastructure as code :
Infrastructure as code (IaC) is the process of managing and provisioning computer data centers  through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools. The IT Infrastructure managed by this process comprises both physical equipment, such as bare-metal servers , as well as vms , and associated configuration resources. The definitions may be in a version control system. It can use either scripts or declarative definitions, rather than manual processes, but the term is more often used to promote declarative approaches. example : Terraform
- Disaster recovery / Chaos engineering /Backup & Restoration :
Disaster recovery is an organization's method of regaining access and functionality to its IT infrastructure after events like a natural disaster, cyber attack, or even business disruptions / Chaos engineering is the discipline of experimenting on a software system in production in order to build confidence in the system's capability to withstand turbulent and unexpected conditions.
- Infinitely and Dynamically Scalable:
Whenever needed you can scale your infrastructure Infinitely and Dynamically
- Secret Management:
All the infrastructure secrets has to be maintain in an vault management system , so that on demand you can rotate the secrets and see who and where the secrets are being used. example : Hashicorp Vault, Azure key Vault
Service Discovery 
Consul
- Self Healing
Self healing means the ability of systems or environments to detect and resolve problems automatically. It eliminates the need for manual human intervention, upon which most systems today still rely to fix issues.

## Application
- Microservices :
 is an architectural style that structures an application as a collection of services that are. Highly maintainable and testable. Loosely coupled. Independently deployable. Organized around business capabilities 
- Resiliency:
Cloud Native applications need to work no matter what. Develop an application by assuming the worst-case scenario so that the final product is a fail-safe app.
- Scalable / elasticity:
Cloud Native applications need to support the growth of an organization’s Cloud Native infrastructure and landscape. Support for storage, databases, and networking, for example, requires the ability to scale the Cloud Native application to meet growing demands. Cloud Native applications adjust accordingly to the changing workload
- Support multiple languages and frameworks:
Cloud Native applications use the languages and frameworks most relevant for each service
- Repurpose services :
Cloud Native applications should be able to reuse the services across applications and services rather than creating a new one for each purpose.
- API fast:
Domain Driven Design and decoupling from the mainframes on the data part
- Governance: Alignment with regulatory reqs and compliance as code in the SDLC as well as publics cloud controls
 Cloud Native applications require a governance model using a defined set of policies. The policies are set by IT operations so that they can allocate the right resources for developers and DevOps teams to share across their departments. 
- Packaged as lightweight container
The application package should not contain any unused and unnecessary system and application library or dependency. Light weight container performs very well in many scenario. 

- Shift Left Security
open source, code repos, artifacts, images and containers full lifecycle, including policy engineering and violation manamgenet, embedded in the tecg (CI/CD, Openshift, AWS)

## Observable
- Interactive Diagrams :
Pipelines’ rich workflow diagrams enable you to see how your steps connect and watch the progress of your pipelines as they execute. Click to reveal what’s taking place on your build nodes in real time, or view the logs to diagnose issues.
- Logging & Monitoring of various levels:
- Recording of discrete events
- Metrics and Dashboarding 
Aggregation of similar events to gain a higher level of insight
- Tracing
Recording, ordering and binding of data from connected events to provide context
- Alerting
Notification when event behavior falls outside of acceptable threshold and could potentially become problematic
Reconciliation with ITSM, particularly ServiceNow on events and incidents
Performance Engineering
Velocity measurements on CI/CD, etc 

## CI/CD
- GitOps:
GitOps is a way of implementing Continuous Deployment for cloud native applications. It focuses on a developer-centric experience when operating infrastructure, by using tools developers are already familiar with, including Git and Continuous Deployment tools. 
Built on cloud native standard like - immutable containers, microservices, and orchestration:
Any solution run in a cloud should use the established technologies – immutable containers, microservices, and orchestration – meant to make cloud computing work at its best. Pipelines CI/CD doesn’t just run in the cloud, it performs builds cloud natively. Each step of your pipeline is by default executed in an immutable runtime container on a build machine node. Each step can run in the environment and configuration it needs, without the things it doesn’t need, and will produce the same results every time.
- Pipeline as code: (agnostic of target - service multi-hybrid cloud deployments)
All the declarative pipeline  has to be in a source code management tool.
- Configuration as code:
All the CI/CD configuration has to be in a source code management tool.
- Infrastructure agnostic:
To be cloud native, your CI/CD must be interoperable on many systems, regardless of the underlying hardware. It can require a minimum set of resources such as storage and memory, but should be able to operate with many types.
Event Driven ITSM Primarily on the sphere of incident, change and availability management 
Deployment tactics
Selective feature enablement, canary releases (Day -1 & =0)

## SRE (run the show and ensure readiness)
- Availability: 
In SRE terms, defines whether a system is able to fulfill its intended function at a point in time. In addition to being used as a reporting tool, the historical availability measurement can also describe the probability that your system will perform as expected in the future.
- Performance:
- Observability:
Incident & Emergency Response: (alignment with ECC on L1 design and ops) + ServiceNow
Minimize the MTTR and business impact

- Continuous Improvements:
- Monitoring and Event:
Proactive and tactical monitoring, aligned with SLM, real time dashboards, events, automated incident creation and closure, minimum Level 3 on coverage, historical data trend analysis
- Capacity Management:
Proactive and tactical based on indented growth and historical data
- Service Level Management:
SLAs, SLOs, OLAs, SLIs, MTTR, MTBF  and Error Budget agreements, monitoring and reporting
- Release Engineering:
Interoperate change management with CI/CD, “one-click” or “hands off” deployments, release velocity (“time to market”, versioning, orchestration, selective roll back, post deployment automated verifications, release calendars and impact analysis, playbooks
- Reliability, Resliency and Stability :
Design/build infrastructure, backup/ restore, load balancing, self healing, continuity management, containers, Cloud, Chaos engineering, performance management, error handling
Autonomous Operations principles
