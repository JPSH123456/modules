rg = {
  r1 = {
    name     = "r1"
    location = "west us"
  }
}
vnet = {
  "v1" = {
    name                = "v1"
    location            = "west us"
    resource_group_name = "r1"
    address_space       = ["10.0.0.0/16"]
  },
  "v2" = {
    name                = "v2"
    location            = "west us"
    resource_group_name = "r1"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  s1 = {
    name                 = "subnet1"
    resource_group_name  = "r1"
    virtual_network_name = "v1"
    address_prefixes     = ["10.0.1.0/24"]
  }
  s2 = {
    name                 = "subnet2"
    resource_group_name  = "r1"
    virtual_network_name = "v2"
    address_prefixes     = ["10.0.2.0/24"]
  }
  s3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "r1"
    virtual_network_name = "v1"
    address_prefixes     = ["10.0.3.0/24"]
  }  
}


vms = {
  nc1 = {
    name                 = "nic1"
    location             = "west us"
    resource_group_name  = "r1"
    subnet_name          = "subnet1"
    virtual_network_name = "v1"
    vmname               = "frontend"
    vm_size              = "Standard_B1s"
    admin_username       = "azure"
    admin_password       = "Jaiprakash@793"
  }
  nc2 = {
    name                 = "nic2"
    location             = "west us"
    resource_group_name  = "r1"
    subnet_name          = "subnet2"
    virtual_network_name = "v2"
    vmname               = "backendvm"
    vm_size              = "Standard_B1s"
    admin_username       = "azureadmin"
    admin_password       = "Jaiprakash@793"
  }

}


