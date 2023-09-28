
param storageAccountName string
param deploymentLocation   string //= 'uk south'
param storageAccountSKU  string //= 'Standard_LRS'
param storageAccountKind   string //= 'StorageV2'
param dataFactoryName string //= 'cjt_devops_training_test_270923'
param deploymentLocationadf   string //= 'uk south'
param deployDataFactory bool = false

module storageAccount '../templates/storage-account.bicep' = {
  name: 'storageAccountSetup'
  params: {
    deploymentLocation: deploymentLocation
    storageAccountKind: storageAccountKind
    storageAccountName: storageAccountName 
    storageAccountSKU: storageAccountSKU
  }
}

module dataFactory '../templates/data-factory.bicep' =  if(deployDataFactory) {
  name: 'dataFactoryDeploy'
  params: {
    dataFactoryName: dataFactoryName
    deploymentLocationadf: deploymentLocationadf
  }
}
