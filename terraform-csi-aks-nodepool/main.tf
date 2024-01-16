resource "azurerm_kubernetes_cluster_node_pool" "aksnodepool" {
  name                   = var.name
  kubernetes_cluster_id  = var.kubernetes_cluster_id
  vm_size                = var.vm_size
  enable_auto_scaling    = true
  enable_host_encryption = true
  orchestrator_version   = var.orchestrator_version
  os_type                = var.os_type
  zones                  = var.zones
  node_count             = var.node_count
  max_count              = var.max_count
  min_count              = var.min_count
  max_pods               = var.max_pods
  vnet_subnet_id         = var.vnet_subnet_id
  os_disk_size_gb        = var.os_disk_size_gb
  node_labels            = var.node_labels
  node_taints            = var.node_taints
  tags                   = var.tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to node_count, e.g. because when autoscaling is enabled node_count may change
      node_count
    ]
  }
}
