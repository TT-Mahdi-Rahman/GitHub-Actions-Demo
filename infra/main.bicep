// parameters

@description('name of resource group')
param saName string
@description('location of deployment')
param location string

// deploy storage account
module storageAccount 'br/public:avm/res/storage/storage-account:0.27.1' = {
  params: {
    name: saName
    location: location
  }
}
