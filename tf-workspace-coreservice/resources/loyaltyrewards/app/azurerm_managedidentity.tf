module "azuremanagedidentity" {
  source              = "app.terraform.io/csiseg/azuremanagedidentity/csi"
  version             = "1.0.1"
  name                = "uaim-loyaltyrewards-${var.env}-${var.loc}"
  location            = module.resourcegroup.location
  resource_group_name = module.resourcegroup.name
  tags                = local.tags
  depends_on = [module.resourcegroup]
}



module "role-assignment-appconfig" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.appconfig.id
  role_definition_name = var.role_data_owner
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "cosmosdb-sql-role" {
  source              = "app.terraform.io/csiseg/cosmos-sql-role/csi"
  version             = "1.0.0"
  rolename            = "sqlid-loyaltyrewards-ebg-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  cosmosdb_name       = "cosmos-loyaltyrewards-ebg-${var.env}-${var.loc}"
  scope               = [module.cosmos-db.cosmosdb_id]
  data_actions        = var.data_action
  //tags                = local.tags
}


module "sql-role-assignment-cosmosdb" {
  source              = "app.terraform.io/csiseg/cosmos-sql-roleassignment/csi"
  version             = "1.0.0"
  resource_group_name = module.resourcegroup.name
  cosmosdb_name       = "cosmos-loyaltyrewards-ebg-${var.env}-${var.loc}"
  sql_role_id         = module.cosmosdb-sql-role.id
  principal_id        = module.azuremanagedidentity.mi_principal_id
  scope               = module.cosmos-db.cosmosdb_id
}

module "role-assignment-kv_secrets" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.kv-loyaltyrewards.id
  role_definition_name = var.role_keyvault_secret
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-kvadmin" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.kv-loyaltyrewards.id
  role_definition_name = var.role_keyvault_admin
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "kv_creation" {
  source  = "app.terraform.io/csiseg/creation/role"
  version = "1.0.2"
  name = "keyvaultsecrets-${var.env}-${var.loc}"
  scope = var.scope
  data_actions = var.keyvault_actions
  assignable_scopes = var.assignable_scopes
}

module "role-assignment-kvadmin_secrets" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.kv-loyaltyrewards.id
  role_definition_name = "keyvaultsecrets-${var.env}-${var.loc}"
  principal_id         = module.azuremanagedidentity.mi_principal_id
}

module "role-assignment-kvadmin_resource" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.resourcegroup.id
  role_definition_name = "keyvaultsecrets-${var.env}-${var.loc}"
  principal_id         = var.role_principal_id
  depends_on = [module.role-assignment-kvadmin_secrets]
}

module "role-assignment-appconfig_resource" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.resourcegroup.id
  role_definition_name = var.role_data_owner
  principal_id         = var.principal_id
}

module "role-assignment-kvsecret_users" {
  source               = "app.terraform.io/csiseg/role-assignment/csi"
  version              = "1.0.1"
  scope                = module.resourcegroup.id
  role_definition_name = var.kv_secret_user
  principal_id         = "d6b8a766-cd5b-4cce-b59d-c723b515ff07"
}
