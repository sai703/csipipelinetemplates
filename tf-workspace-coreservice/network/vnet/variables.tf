variable "network_env" {
    type = string
    default = "NonProd"
}
variable "network_loc" {
    type = string
    default = "CentralUS"
}
variable "env" {
    type = string
    default = "nonprod"
}
variable "loc" {
    type = string
    default = "centralus"
}
variable "address_space" {
    type = list(string)
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