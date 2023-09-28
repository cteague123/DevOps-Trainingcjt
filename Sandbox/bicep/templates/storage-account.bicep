
param storageAccountName  string //= 'cjtdevopstrainingtest'

param deploymentLocation   string //= 'uk south'

param storageAccountSKU  string //= 'Standard_LRS'

param storageAccountKind   string //= 'StorageV2'


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName 
  location: deploymentLocation
  sku: {
    name: storageAccountSKU 
  }
  kind: storageAccountKind 
  properties:{
    allowBlobPublicAccess: false
  }
}



