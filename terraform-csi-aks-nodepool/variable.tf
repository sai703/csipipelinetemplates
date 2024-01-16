variable "name" {
  type = string
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "kubernetes_cluster_id" {
    type         = string
    description  = "(Required) The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created."
}

variable "vm_size" {
  description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2. Changing this forces a new resource to be created"
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

variable "os_type" {
    type        = string
    description = "(Optional) The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are Linux and Windows. Defaults to Linux."
    default     =  null
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
  default     = null
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

variable "node_taints" {
  description = "(Optional) A list of Kubernetes taints which should be applied to nodes in the agent pool (e.g key=value:NoSchedule). Changing this forces a new resource to be created."
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "(Optional) A mapping of tags to assign to the Node Pool."
  type        = map(string)
}