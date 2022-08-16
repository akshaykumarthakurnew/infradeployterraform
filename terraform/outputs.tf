output "azure_region" {
  description = "Azure region"
  value       = var.region
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_host_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.host
}

output "aks_client_key" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_key
}

output "aks_client_certificate" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config.0.client_certificate
}

output "aks_kube_config" {
  value = azurerm_kubernetes_cluster.aks_cluster.kube_config_raw
}

output "resource_group" {
  description = "Azure Resource Group Name"
  value       = azurerm_resource_group.resource_group_aks.name
}

output "tag_name" {
  description = "Tag name"
  value       = var.tag_name
}
output "tag_component" {
  description = "Tag component"
  value       = var.tag_component
}
output "tag_environment" {
  description = "Tag environment"
  value       = var.tag_environment
}
