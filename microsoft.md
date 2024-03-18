#### Integrate With microsoft Entra Token credential.

Here's how to acquire and use the DefaultAzureCredential for Java applications:

Install the Azure Identity library for Java:

```XML
<dependency>
    <groupId>com.azure</groupId>
    <artifactId>azure-identity</artifactId>
    <version>1.5.3</version>
</dependency>
```
[Register a Microsoft Entra application and create a new service principal.](https://learn.microsoft.com/en-us/azure/ai-services/authentication?tabs=powershell&view=doc-intel-4.0.0#assign-a-role-to-a-service-principal)

Grant access to Document Intelligence by assigning the Cognitive Services User role to your service principal.

Set the values of the client ID, tenant ID, and client secret of the Microsoft Entra application as environment variables: AZURE_CLIENT_ID, AZURE_TENANT_ID, and AZURE_CLIENT_SECRET, respectively.

Create your DocumentIntelligenceClient instance and TokenCredential variable:

```Java
TokenCredential credential = new DefaultAzureCredentialBuilder().build();
DocumentIntelligenceClient documentIntelligenceClient = new DocumentIntelligenceClientBuilder()
    .endpoint("{your-endpoint}")
    .credential(credential)
    .buildClient();
```

For more details [Microsoft-entra-token-credential](https://learn.microsoft.com/en-us/azure/ai-services/document-intelligence/sdk-overview-v4-0?view=doc-intel-4.0.0&tabs=java#use-a-microsoft-entra-token-credential)
