**To Create an AKS with azureCLI**
To create a AKS with Azure CLI, Use the below command

```sh
REGION_NAME=eastus
RESOURCE_GROUP=aksworkshop
SUBNET_NAME=aks-subnet
VNET_NAME=aks-vnet

az group create \
    --name $RESOURCE_GROUP \
    --location $REGION_NAME

az network vnet create \
    --resource-group $RESOURCE_GROUP \
    --location $REGION_NAME \
    --name $VNET_NAME \
    --address-prefixes 10.0.0.0/8 \
    --subnet-name $SUBNET_NAME \
    --subnet-prefix 10.240.0.0/16

SUBNET_ID=$(az network vnet subnet show \
    --resource-group $RESOURCE_GROUP \
    --vnet-name $VNET_NAME \
    --name $SUBNET_NAME \
    --query id -o tsv)

VERSION=$(az aks get-versions \
    --location $REGION_NAME \
    --query 'orchestrators[?!isPreview] | [-1].orchestratorVersion' \
    --output tsv)

AKS_CLUSTER_NAME=aksworkshop-$RANDOM

az aks create \
--resource-group $RESOURCE_GROUP \
--name $AKS_CLUSTER_NAME \
--vm-set-type VirtualMachineScaleSets \
--load-balancer-sku standard \
--location $REGION_NAME \
--kubernetes-version $VERSION \
--network-plugin azure \
--vnet-subnet-id $SUBNET_ID \
--service-cidr 10.2.0.0/24 \
--dns-service-ip 10.2.0.10 \
--docker-bridge-address 172.17.0.1/16 \
--generate-ssh-keys
--service-principal $ARM_CLIENT_ID 
--client-secret $ARM_CLIENT_SECRET

```

**Connect to the cluster with az**
```
az aks get-credentials \
    --resource-group $RESOURCE_GROUP \
    --name $AKS_CLUSTER_NAME

# To verify you are on the correct kubectl context

kubectl config get-contexts
kubectl get nodes
```

**Azutre Container Registry**
```
az acr create \
    --resource-group $RESOURCE_GROUP \
    --location $REGION_NAME \
    --name $ACR_NAME \
    --sku Standard
```

**Build Docker Image with az cli**
```
az acr build \
    --resource-group $RESOURCE_GROUP \
    --registry $ACR_NAME \
    --image image_name:version .
    
# List all the images in table format
az acr repository list \
    --name $ACR_NAME \
    --output table
```

**Connect ACR to AKS**

```
az aks update \
    --name $AKS_CLUSTER_NAME \
    --resource-group $RESOURCE_GROUP \
    --attach-acr $ACR_NAME
```
