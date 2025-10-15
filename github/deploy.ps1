az login --use-device-code
az account set --subscription "8be0e234-8646-4411-abfe-91ac23be5c75" 

$rgname = "mahdi-demo"

# create resource group
az group create --location "uksouth" --name $rgname

# deploy identity
az deployment group create --resource-group $rgname --template-file githubAction.bicep --parameters githubAction.bicepparam