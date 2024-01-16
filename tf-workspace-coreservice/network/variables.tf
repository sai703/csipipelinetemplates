variable "network_env" {
  type    = string
  default = "NonProd"
}


variable "env" {
  type    = string
  default = "nonprod"
}
variable "central_address_space" {
  type    = list(string)
  default = ["10.225.96.0/19"]
}

variable "eastus2_address_space" {
  type    = list(string)
  default = ["10.226.96.0/19"]
}

variable "tf_sa_client_id" {

}

variable "tf_sa_client_secret" {

}

variable "tf_sa_subscription_id" {

}

variable "tf_sa_tenant_id" {

}


variable "network_subscription_id" {

}