module "vnet-centralus" {
  source                  = "./vnet"
  env                     = var.env
  loc                     = "centralus"
  network_env             = var.network_env
  network_loc             = "CentralUS"
  address_space           = var.central_address_space
  tf_sa_client_id         = var.tf_sa_client_id
  tf_sa_client_secret     = var.tf_sa_client_secret
  network_subscription_id = var.network_subscription_id
  tf_sa_tenant_id         = var.tf_sa_tenant_id
  tf_sa_subscription_id   = var.tf_sa_subscription_id
}


module "vnet-eastus2" {
 source = "./vnet"
 env = var.env
 loc = "eastus2"
 network_env = var.network_env
 network_loc = "EastUS2"
 address_space = var.eastus2_address_space
 tf_sa_client_id = var.tf_sa_client_id
 tf_sa_client_secret = var.tf_sa_client_secret
 network_subscription_id = var.network_subscription_id
 tf_sa_tenant_id = var.tf_sa_tenant_id
 tf_sa_subscription_id = var.tf_sa_subscription_id
}