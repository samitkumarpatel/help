## What is Cloud Native ?

Cloud Native is methodology of building and running application, it fully exploit the power of cloud computing which offers on demand limitless computing power either on public , private or hybrid cloud.

## Why is Cloud Native important?

Adopting Cloud Native technologies and practices enables companies to create software in-house, allows those in business departments such as finance to closely partner with IT, keep up with competitors, and deliver better services to their customers. Cloud Native enable cloud portability without vendor lock-in.

In fact, being Cloud Native has clear advantages compared to traditional development and computing:

- Faster code development and deployment 
- Higher turnaround of services 
- Adoption of serverless computing 
- More impetus to DevOps processes 
- Scalability 
- Resiliency 
- Reusable services 

## What we can Benefits from Cloud Native

When successfully implemented it can bring unprecedented speed, agility and resilience in to the app development and management process. It greatly increased developer productivity and simplifies operation.

New application feature and services can now be push to live application for customer use. Whenever they are ready with no need to worry about other teams work and zero impact on end user experience, In addition cloud native application can be automatically scaled up quickly and massively or scaled down fast as needed, needing the exact the customer demand while optimising the usage of resources. This containerised cloud native app are also easily portable across different environment for added agility and flexibility.

Furthermore cloud native app are built with :

Greater resilience inside the application itself to better handle turns
Quickly replacing failed component and recovering from unexpected event and failures.
Minimising or even illuminating any service downtime
Successful adoption of cloud native approach:

Enable organisation to bring new innovation to market faster
Accelerating digital transformation of Morden enterprise.


## Cloud Native Characteristic

Application build and deploy on cloud native methodology have some common characteristic

Microservice Architecture : Cloud Native app adopt microservice architecture. Each application is a collection of small service, that can be operate independently with each other. Microservice are often own by individual development teams which operate their own schedule to Develop , Deploy, Scale and Upgrade the services
Package in Containers : Cloud native app are package in containers. Container provide isolation context from microservices. They are highly accessible, scalable, easily portable from one environment to another environment and fast to create and tear down.
Continuous Delivery : Cloud natives app run on a continuous delivery model like Develop, Build, test, Deploy, Release . Software developer and IT operation team collaborate to build , test and release software update as soon as they are ready, without effecting end user or developer on other teams. Such a model encourages the adoption of Devops principle. Which faster the collaboration between software developer and IT operations and create a culture in practice in building, testing and releasing software happens rapidly, frequently and more consistently






Dynamically Managed Cloud : In addition , Cloud Native application are dynamically managed in Cloud (private , public or Hybrid), they often build and run on morden cloud native platform such as kubernates or any other containerisation platform which offer Hardware decoupling helping in terms of automating deployment , scaling and management of cloud native application.
What is Cloud Native Development?

So why is Cloud Native important for developers?

With a Cloud Native architecture, developers need to understand the basics of what’s required for creating modern Cloud Native applications. Development includes implementing an agile methodology, as well as adopting DevSecOps practices, microservices, single or multi-cloud strategy, and containers orchestration tools like Kubernetes.

Microservices are the foundation of a Cloud Native architecture. These microservices are designed to run and execute different functions within the application. For example, one microservice may be designed to implement a process while another may be used to run that process.

These microservices are often packaged into containers so developers can work on one set of microservices at a time versus an entire Cloud Native application.

Software developers should consider certain elements when creating Cloud Native applications:

Resiliency: Cloud Native applications need to work no matter what. Develop an application by assuming the worst-case scenario so that the final product is a fail-safe app.
Scalable: Cloud Native applications need to support the growth of an organization’s Cloud Native infrastructure and landscape. Support for storage, databases, and networking, for example, requires the ability to scale the Cloud Native application to meet growing demands. Cloud Native applications adjust accordingly to the changing workload.
Support multiple languages and frameworks: Cloud Native applications use the languages and frameworks most relevant for each service.
Repurpose services: Cloud Native applications should be able to reuse the services across applications and services rather than creating a new one for each purpose.
APIs: Cloud Native applications use APIs such as representational state transfer (REST), Google remote procedure call (gRPC), and others in Cloud Native services.
Agile DevOps: Cloud Native applications require services to be managed using agile DevOps processes.
Governance: Cloud Native applications require a governance model using a defined set of policies. The policies are set by IT operations so that they can allocate the right resources for developers and DevOps teams to share across their departments.
What is Cloud Native Infrastructure?

Cloud native infrastructure is infrastructure that is hidden behind useful abstractions, controlled by APIs, managed by software, and has the purpose of running applications. Running infrastructure with these traits gives rise to a new pattern for managing that infrastructure in a scalable, efficient way.

Abstractions are useful when they successfully hide complexity for their consumer. They can enable more complex uses of the technology, but they also limit how the technology is used. They apply to low-level technology, such as how TCP abstracts IP, or higher levels, such as how VMs abstract physical servers. Abstractions should always allow the consumer to “move up the stack” and not reimplement the lower layers.

Cloud native infrastructure needs to abstract the underlying IaaS offerings to provide its own abstractions. The new layer is responsible for controlling the IaaS below it as well as exposing its own APIs to be controlled by a consumer.

Infrastructure that is managed by software is a key differentiator in the cloud. Software-controlled infrastructure enables infrastructure to scale, and it also plays a role in resiliency, provisioning, and maintainability. The software needs to be aware of the infrastructure’s abstractions and know how to take an abstract resource and implement it in consumable IaaS components accordingly.

These patterns influence more than just how the infrastructure runs. The types of applications that run on cloud native infrastructure and the kinds of people who work on them are different from those in traditional infrastructure.

Infrastructure Overview –







Infrastructure as a Service (IaaS) is one of the many offerings of a cloud provider. It provides raw networking, storage, and compute that customers can consume as needed. It also includes support services such as identity and access management (IAM), provisioning, and inventory systems

Just as IaaS hides physical servers from VM consumers, platform as a service (PaaS) hides operating systems from applications. Developers write application code and define the application dependencies, and it is the platform’s responsibility to create the necessary infrastructure to run, manage, and expose it. Unlike IaaS, which still requires infrastructure management, in a PaaS the infrastructure is managed by the platform provider.

It turns out, PaaS limitations required developers to write their applications differently to be effectively managed by the platform. Applications had to include features that allowed them to be managed by the platform without access to the underlying operating system. Engineers could no longer rely on SSHing to a server and reading log files on disk. The application’s life cycle and management were now controlled by the PaaS, and engineers and applications needed to adapt

Software as a service (SaaS) allows users to connect to and use cloud-based apps over the Internet. Common examples are email, calendaring, and office tools (such as Microsoft Office 365).

SaaS provides a complete software solution that you purchase on a pay-as-you-go basis from a cloud provider. You rent the use of an app for your organization, and your users connect to it over the Internet, usually with a web browser. All of the underlying infrastructure, middleware, app software, and app data are located in the service provider’s data center.

 

## What would Cloud Native CI/CD looks like ?

Built on Cloud Native Standards: Any solution run in a cloud should use the established technologies – immutable containers, microservices, and orchestration – meant to make cloud computing work at its best. Pipelines CI/CD doesn’t just run in the cloud, it performs builds cloud natively. Each step of your pipeline is by default executed in an immutable runtime container on a build machine node. Each step can run in the environment and configuration it needs, without the things it doesn’t need, and will produce the same results every time
Infrastructure Agnostic : To be cloud native, your CI/CD must be interoperable on many systems, regardless of the underlying hardware. It can require a minimum set of resources such as storage and memory, but should be able to operate with many types
Infinitely and Dynamically Scalable: Scalability is what the cloud is all about, to serve changing demand, support growing teams, dynamically scale down to save on infrastructure costs, and stretch your operations across the globe. And you need all your services to be able to scale up and down quickly without interrupting work
On demand machine
One CI/CD , many pipeline
Configure as Code: Pipelines uses a declarative DSL to define workflows that are based on YAML, “the language of cloud native” that also powers technologies like Kubernetes and Helm.
Observable: With a reliance on machine virtualization through containers, interfaces, and orchestration, cloud native systems are inherently opaque. So cloud native CI/CD must provide you ways to ask questions about its state and get actionable answers.
Interactive Diagrams and Logs
Machine Utilization
Enable Cloud Native Development: Cloud native CI/CD can’t just be cloud native, it must help you build cloud native. It should include the facilities you need to develop and produce your applications as containerized microservices that can run efficiently in the cloud. Pipelines provides out-of-the-box integrations with essential cloud native tools like Docker registries and Kubernetes, enabling you to deliver the apps you build to the cloud
 

## What are Cloud Native Challenges?

While applications may be cloud-friendly, there is still a difference between those that are truly Cloud Native. The infrastructure in an enterprise is increasingly becoming more and more complex. As companies adopt a digital transformation strategy, they’re finding that moving from an on-premises environment to a Cloud Native is not a simple process. In fact, enterprise architects, developers continue to face multiple challenges to transform their organization from an on-premises environment to the cloud.

Complexity: IT operations supports a complex, distributed enterprise infrastructure, which requires the need to automatically simplify the overarching view of the environment.
Hardware reliance: Microservices rely on operating systems and/or machines that utilize capabilities for certain operations such as solid-state drives or GPUs, which means the hardware cannot fail.
Governance: Detecting risks and identifying vulnerabilities is imperative with the potential exposure to security and compliance issues.
DevOps: Despite the rise of DevOps, a perfect collaboration between Dev and Ops is not yet readily apparent as these teams continue searching for the best ways of working together.
Time: It can be a time-consuming and tedious process to migrate IT assets to the cloud.
Redesign and re-architect: It’s an extensive effort to redesign and re-architect applications for the cloud.


##Tools and Process to enable Cloud Nativeness

Process

GitOps: is a way of implementing Continuous Deployment for cloud native applications. It focuses on a developer-centric experience when operating infrastructure, by using tools developers are already familiar with, including Git and Continuous Deployment tools. The core idea of GitOps is having a Git repository that always contains declarative descriptions of the infrastructure currently desired in the production environment and an automated process to make the production environment match the described state in the repository. If you want to deploy a new application or update an existing one, you only need to update the repository - the automated process handles everything else. It’s like having cruise control for managing your applications in production. for more constructive details follow this WIP - GitOps page
Tools / Technology

Docker: Docker is a set of platform as a service products that use OS-level virtualization to deliver software in packages called containers. Containers are isolated from one another and bundle their own software, libraries and configuration files; they can communicate with each other through well-defined channels.
Kubernetes: Kubernetes is an open-source container-orchestration system for automating computer application deployment, scaling, and management.
Terraform: Terraform is an open-source infrastructure as code software tool created by HashiCorp. Users define and provision data center infrastructure using a declarative configuration language known as HashiCorp Configuration Language, or optionally JSON.


Vault: Hashicorp Vault Secure, store and tightly control access to tokens, passwords, certificates, encryption keys for protecting secrets and other sensitive data using a UI, CLI, or HTTP API.
Consul: HashiCorp Consul is a service mesh solution providing a full featured control plane with service discovery, configuration, and segmentation functionality. Each of these features can be used individually as needed, or they can be used together to build a full service mesh. Consul requires a data plane and supports both a proxy and native integration model. Consul ships with a simple built-in proxy so that everything works out of the box
