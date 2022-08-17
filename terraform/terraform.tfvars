# AKS Cluster
cluster_dns_prefix="aks-test"
cluster_name="aks-cluster"
cluster_version="1.18.10"

# AKS Nodes
cluster_node_count_min=1
cluster_node_count_max=2
cluster_node_name="aksclusternm"
cluster_node_os_disk_size=30
# Check SKU in https://docs.microsoft.com/pt-br/azure/virtual-machines/sizes-general
cluster_node_vm_size="Standard_A2_v2"

# Logs - the expected value should be between 30 to 730. see https://docs.microsoft.com/azure/azure-monitor/platform/manage-cost-storage#change-the-data-retention-period
logs_retention_days=30

# Others
region="westeurope"
resource_group_name="ak-dev-nl1"

# Tag control
tag_component="aks_component"
tag_environment="dev"
tag_name="aks_cluster"
