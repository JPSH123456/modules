resource "azurerm_public_ip" "public" {
  name                = "public"
  location            = "west us"
  resource_group_name = "r1"
  allocation_method   = "Static"
  sku = "Standard"

}

resource "azurerm_bastion_host" "bation_hostdemo" {
  name                = "bastionhost"
  location            = "west us"
  resource_group_name = "r1"

  ip_configuration {
    name                 = "configuration"
    subnet_id            = data.azurerm_subnet.subnet_id.id
    public_ip_address_id = azurerm_public_ip.public.id
  }
}