resource "azurerm_kubernetes_cluster" "akscluster" {
  name                       = var.name
  location                   = var.location
  resource_group_name        = var.resource_group_name
  dns_prefix_private_cluster = var.dns_prefix_private_cluster
  sku_tier                   = var.sku_tier
  private_cluster_enabled    = var.private_cluster_enabled
  private_dns_zone_id        = var.private_dns_zone_id
  automatic_channel_upgrade  = var.automatic_channel_upgrade
  tags                       = var.aks_tags
  oidc_issuer_enabled        = var.oidc_issuer_enabled
  kubernetes_version         = var.kubernetes_version 
  default_node_pool {
    name                    = var.default_node_pool_name
    orchestrator_version    = var.orchestrator_version
    zones                   = var.zones
    enable_auto_scaling     = true
    enable_host_encryption  = true
    node_count              = var.node_count
    max_count               = var.max_count
    min_count               = var.min_count
    max_pods                = var.max_pods
    vm_size                 = var.vm_size
    vnet_subnet_id          = var.vnet_subnet_id
    os_disk_size_gb         = var.os_disk_size_gb
    type                    = "VirtualMachineScaleSets"
    node_labels             = var.node_labels
    tags                    = var.agents_tags
  }

  network_profile {
    network_plugin     = var.network_plugin
    network_policy     = var.network_policy
    dns_service_ip     = var.dns_service_ip
    docker_bridge_cidr = var.docker_bridge_cidr
    service_cidr       = var.service_cidr
  }

  oms_agent {
   log_analytics_workspace_id = var.log_analytics_workspace_id
  }

  identity {
    type                      = "UserAssigned"
    identity_ids              = var.identity_ids
  }

  azure_active_directory_role_based_access_control {
      managed                = true
      admin_group_object_ids = var.admin_group_object_ids
      azure_rbac_enabled     = true
    }
  
  dynamic "key_vault_secrets_provider" {
    for_each = var.enable_key_vault_secrets_provider ? [1] : [0]
    content {
      secret_rotation_enabled = var.key_vault_secrets_provider.secret_rotation_enabled
      secret_rotation_interval = var.key_vault_secrets_provider.secret_rotation_interval
    }
   
  }
}