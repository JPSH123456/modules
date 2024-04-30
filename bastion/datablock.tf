
data "azurerm_subnet" "subnet_id" {
  name                 = "AzureBastionSubnet"
  virtual_network_name = "v1"
  resource_group_name  = "r1"
}
