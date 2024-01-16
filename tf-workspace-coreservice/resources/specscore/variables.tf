###
# Standard Variables
###
variable "env" {
  default = "dev"
  type    = string
}

variable "loc" {
  default = ""
  type    = string
}


###

###
# Custom Variables
###


variable "eh_sku_name" {
  type        = string
  description = ""
}

variable "id_type" {
  type        = string
  description = ""
}

variable "tf_sa_client_id" {

}

variable "tf_sa_client_secret" {

}

variable "tf_sa_tenant_id" {

}

variable "tf_sa_subscription_id" {
  
}

