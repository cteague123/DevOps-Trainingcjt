
param dataFactoryName string //= 'cjt_devops_training_test_270923'

param deploymentLocationadf   string //= 'uk south'


resource datafactory 'Microsoft.DataFactory/factories@2018-06-01' = {
  name: dataFactoryName
  location: deploymentLocationadf 
}



