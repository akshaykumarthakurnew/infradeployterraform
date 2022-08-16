variable "cluster_version" {}
variable "cluster_dns_prefix" {}
variable "cluster_name" {}
variable "cluster_node_count_min" {}
variable "cluster_node_count_max" {}
variable "cluster_node_name" {}
variable "cluster_node_os_disk_size" {}
variable "cluster_node_vm_size" {}
variable "logs_retention_days" {}
variable "region" {}
variable "resource_group_name" {}
variable "tag_name" {}
variable "tag_component" {}
variable "tag_environment" {}

locals {
  default_tags = {
    name        = var.tag_name
    component   = var.tag_component
    environment = var.tag_environment
  }
}
