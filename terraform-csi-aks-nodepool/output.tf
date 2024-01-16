output "kubernetes_node_pool_id" {
  value       =  azurerm_kubernetes_cluster_node_pool.aksnodepool.id
  description = "The id of the aks node pool"
}