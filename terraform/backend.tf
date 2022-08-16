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
    resource_group_name  = "ak-dev-nl"
    storage_account_name = "akkitestaccount"
    container_name       = "terraform"
    # state name that will be created
    key                  = "terraform-aks"
  }
}
