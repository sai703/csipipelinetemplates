variable "name" {
  type = string
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "location" {
  type = string
  description = "(Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
  description = "(Required) Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created"
  type        = string
}

variable "dns_prefix_private_cluster" {
  description = "(Optional) Specifies the DNS prefix to use with private clusters. Changing this forces a new resource to be created."
  type        = string
}

variable "sku_tier" {
  description = "(Optional)The SKU Tier that should be used for this Kubernetes Cluster, possible values Free or Paid"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Free", "Standard"], var.sku_tier)
    error_message = "SKU_TIER can only be either Standard or Free."
  }

}

variable "private_cluster_enabled" {
  description = "(Optional) Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
  type        = string
  default     = true
}

variable "private_dns_zone_id" {
  description = "(Optional) Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None. In case of None you will need to bring your own DNS server and set up resolving, otherwise cluster will have issues after provisioning. Changing this forces a new resource to be created."
  type        = string
}

variable "aks_tags" {
  description = "(Optional) A mapping of tags to assign to the Node Pool."
  type        = map(string)
}

variable "default_node_pool_name" {
  description = "(Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created"
  type        = string
}

variable "orchestrator_version" {
  description = " (Optional) Version of Kubernetes used for the Agents. If not specified, the default node pool will be created with the version specified by kubernetes_version. If both are unspecified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in the documentation."
  type        = string
  default     = null
}

variable "zones" {
  description = "(Optional) Specifies a list of Availability Zones in which this Kubernetes Cluster should be located. Changing this forces a new Kubernetes Cluster to be created"
  type        = list(string)
  default     = null
}

variable "node_count" {
  description = "(Optional) The initial node count for the default pool of AKS Cluster"
  type        = number
}

variable "max_count" {
  description = "(Optional) The max node count for the default pool of AKS Cluster"
  type        = number
}

variable "min_count" {
  description = "(Optional) The min node count for the default pool of AKS Cluster"
  type        = number
}

variable "max_pods" {
  description = "(Optional) The max pod count for the default pool of AKS Cluster"
  type        = number
}

variable "vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created"
  type        = string
}

variable "vnet_subnet_id" {
  description = "(Optional) The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
  type        = string
}

variable "os_disk_size_gb" {
  description = "(Optional) The size of os disk in gb for the nodes from default pool of AKS Cluster"
  type        = string
}

variable "node_labels" {
  description = "(Optional) A map of Kubernetes labels which should be applied to nodes in the Default Node Pool. Changing this forces a new resource to be created."
  type        = map(string)
  default     = null
}

variable "agents_tags" {
  description = "(Optional) A mapping of tags to assign to the Node Pool."
  type        = map(string)
}

variable "dns_service_ip" {
  description = "(Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
  type        = string
}

variable "docker_bridge_cidr" {
  description = "(Optional) IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created."
  type        = string
}

variable "service_cidr" {
  description = "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
  type        = string
}

variable "network_policy" {
  description = "(Optional) The Network Policy to be used by the network profile of Azure Kubernetes Cluster."
  type        = string
  default     = "azure"
}

variable "network_plugin" {
  description = "(Optional) The Network Plugin to be used by the network profile of Azure Kubernetes Cluster."
  type        = string
  default     = "azure"
}

variable "log_analytics_workspace_id" {
  type = string
  description = "(Required) The ID of the Log Analytics Workspace which the OMS Agent should send data to"
}

variable "identity_ids" {
  description = "(Optional) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster."
  type        = list(string)
  default     = null
}

variable "admin_group_object_ids" {
  description = "(Optional) A list of Object IDs of Azure Active Directory Groups which should have Admin Role on the Cluster."
  type        = list(string)
  default     = null
}

variable "key_vault_secrets_provider" {
    description = "block supports the following: secret_rotation_enabled - (Required) Is secret rotation enabled. secret_rotation_interval - (Required) The interval to poll for secret rotation. This attribute is only set when secret_rotation is true and defaults to 2m."
    type = object({
      secret_rotation_enabled = bool
      secret_rotation_interval = string
    })
    default = {
      secret_rotation_enabled = true,
      secret_rotation_interval = "2m"
    }  
  }

variable "oidc_issuer_enabled" {
  type = string
  default = true
}

variable "kubernetes_version" {
  description = "(Optional) Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case. More details can be found in the documentation."
  type = string
  default = null
}

variable "enable_key_vault_secrets_provider" {
  description = "(Optional) Enable the key_vault_secrets_provider block"
  type = bool
  default = false
}

variable "automatic_channel_upgrade" {
  description = "(Optional) The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, node-image and stable. Omitting this field sets this value to none."
  type = string
  default = "patch"
}
