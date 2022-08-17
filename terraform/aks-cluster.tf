resource "azurerm_kubernetes_cluster" "aks_cluster" {
  name                = var.cluster_name
  dns_prefix          = var.cluster_dns_prefix
  location            = azurerm_resource_group.resource_group_aks.location
  kubernetes_version  = var.cluster_version
  resource_group_name = azurerm_resource_group.resource_group_aks.name
  tags                = local.default_tags
  
  default_node_pool {
    name                 = var.cluster_node_name
    // availability_zones    = [1, 2, 3] --> not supportted in BR
    // node_count           = var.cluster_node_count
    enable_auto_scaling  = true
    max_count            = var.cluster_node_count_max
    min_count            = var.cluster_node_count_min
    vm_size              = var.cluster_node_vm_size
    os_disk_size_gb      = var.cluster_node_os_disk_size
    orchestrator_version = var.cluster_version
    tags                 = local.default_tags
  }

  role_based_access_control {
    enabled = true
  }

  identity {
    type = "SystemAssigned"
  }
}
