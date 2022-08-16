resource "azurerm_resource_group" "resource_group_aks" {
  name     = var.resource_group_name
  location = var.region
  tags     = local.default_tags
}
