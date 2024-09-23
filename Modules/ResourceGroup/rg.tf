resource "azurerm_resource_group" "apprg" {
  name     = var.resource_group_name
  location = var.location
}