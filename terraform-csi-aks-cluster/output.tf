output "node_resource_group" {
  value       = azurerm_kubernetes_cluster.akscluster.node_resource_group
  description = "The name of resource group where the akscluster Nodes are created"
}

output "kubernetes_cluster_id" {
  value       = azurerm_kubernetes_cluster.akscluster.id
  description = "The id of the created aks cluster"
}

output "kubeConfig" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config_raw
  description = "Kubeconfig of akscluster Cluster"
}

output "host" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.host
}

output "client_key" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.client_key
}

output "client_certificate" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.client_certificate
}

output "kube_config" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config_raw
}

output "cluster_ca_certificate" {
  value = azurerm_kubernetes_cluster.akscluster.kube_config.0.cluster_ca_certificate
}