# It's recommended pinning a specific version since new versions are released frequently
provider "azurerm" {
  version = "=2.36.0"
  features {}
}

terraform {
  required_version = ">= 0.13"
  backend "azurerm" {
    # Using SP method to create the state of the backend
    # Using initial state https://github.com/timoteosoutello/devops-azure-initial-terraform-state
    resource_group_name  = "RESOURCE_GROUP_NAME"
    storage_account_name = "STORAGE_ACCOUNT_NAME"
    container_name       = "CONTAINER_NAME"
    # state name that will be created
    key                  = "terraform-aks"
  }
}
