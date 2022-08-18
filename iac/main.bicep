@description('Location for all resources.')
param location string = resourceGroup().location

resource pip 'Microsoft.Network/publicIPAddresses@2020-11-01' = {
  name: 'pip'
  location: location
  sku: {
    name: 'Standard'
    tier: 'Regional'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
    publicIPAddressVersion: 'IPv4'
  }
}
