# NAMESPACES-SERVICEACCOUNTS HELM TEMPLATES
---
## Overview
This is directory contains WorkloadIdentityFrederationhelm templates and `helm-install.yaml` , `helm-namespaces.yaml` ,`helm-serviceaccounts.yaml`
---
## Requirements :
- An `Azure Service Principal` is required. 
- A specific `Service Connection` is required: `Azure Resource Manager` this must be set MANUALLY and passed the `Service Principal`
---
## Instructions :
Create the pipeline.yaml within the directory.
 - The `azurepipelineworkload.yaml` for the WorkloadIdentityFrederation application should exist within the aks-pipeline-templates repository. 

Apply the template to the `azurepipelineworkload.yaml`
- In the "resources" block specify the repository containing the template, the type of repository (git in our example), and finally for the name, use the project name followed by the repository where the template resides
```yaml
resources:
  repositories:
  - repository: aks-pipeline-templates
    type: git
    name: EBG DevOps/aks-pipeline-templates
    ref: feature-prod
```
- After setting the `resources` block we can call the template using a `steps` definition.

```yaml
steps:
- template: namespace_serviceaccount/helm-install.yaml.yaml@aks-pipeline-templates
- template: namespace_serviceaccount/helm-namespaces.yaml@aks-pipeline-templates
- template: namespace_serviceaccount/helm-serviceaccounts.yaml@aks-pipeline-templates
  parameters:
```
Apply the required Parameters to the template. 
- After extending the template you will pass in the parameters that apply.  
- The user can apply more templates to their pipeline by adding `templates` under `steps`, each new template has to have it's own set of parameters passed in. 
---
## Parameters :
What follows is a brief desciption of the parameters being passed into the template. They are all passed in as strings. 

- name: `azureSubscriptionEndpoint`
    - Refers to the `service connection` the workloadidentityfederation will be using. In the example pipeline it is called `template.yaml`. The type of connection must be an `Azure Resource Manager` connection set up manually with the appropriate connections back to the `Service Principal`.
- name: `azureResourceGroup`
    - Refers to the `resource group` where you are going to deploy your application. 

- name: `kubernetesCluster`
    - Refers to the name of the kubernetes cluster being used for your application. 

- name: `WorkloadidentityfederationEUS`
    - Refers to the `service connection` set up for the app.

- name: `azureContainerRegistry`
    - Refers to the name of the container registry hosting your project.

- Register the feature OIDC for the Subscription:
   az feature register –name EnableOIDCIssuerPreview –namespace Microsoft.Container –subscription “{subscriptionId}”

- Creating service account in AKS:
  This service account associates the pod with the Azure Active Directory application and service principal

- Create App Registration and Add the federated credential:
  A service principle is created under the subscription.

- Generate a token file:

  az login --federated-token "$(cat $AZURE_FEDERATED_TOKEN_FILE)" --debug \

  --service-principal -u $AZURE_CLIENT_ID -t $AZURE_TENANT_ID
---
## Documentation 
Further documentation for Packaging and Deploying Workload-Identity-Federation can be found here:

- https://dev.azure.com/csiseg/EBG%20DevOps/_wiki/wikis/EBG-DevOps.wiki/1214/Workload-Identity-Federation

Further documentation for Template types and Usage:

- https://docs.microsoft.com/en-us/azure/devops/pipelines/process/templates?view=azure-devops

When deploying an application to AKS cluster. This application will not be directly or indirectly able to access the resources in the Azure. To create such connection between the Azure AD and the namespace 
that was created in the AKS cluster we need the Workload Identity Federation. When following the above steps we are creating an app registration, when we create an app registration then automatically a service principal 
for that app is created under the subscription. Using this service principle we will have access to the resources based on the role that we provide to the service-principle.


