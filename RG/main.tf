resource "azurerm_resource_group" "rg" {
  for_each = var.jp
  name     = each.value.name
  location = each.value.location
}
