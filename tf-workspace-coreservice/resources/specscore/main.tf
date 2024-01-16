module "images-centralus" {
  source                   = "./app"
  env                      = var.env
  loc                      = var.loc
  eh_sku_name              = var.eh_sku_name
  id_type                  = var.id_type
  tf_sa_client_id                 = var.tf_sa_client_id
  tf_sa_client_secret             = var.tf_sa_client_secret
  tf_sa_tenant_id                 = var.tf_sa_tenant_id
  tf_sa_subscription_id     = var.tf_sa_subscription_id

  
}

