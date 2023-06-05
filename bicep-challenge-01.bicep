@minLength(3) 
@maxLength(24)
@description('Storage account name must be between 3 and 24 characters in length and use numbers and lower-case letters only.')
param accountName string

resource storage 'Microsoft.Storage/storageAccounts@2019-06-01' = {
  name: accountName
  location: 'eastus'
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

output storageId string = storage.id
