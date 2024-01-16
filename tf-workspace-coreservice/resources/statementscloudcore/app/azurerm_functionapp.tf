module "service-plan-specscloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-specscloudcore-statementscloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-statementscloudcore.name
  location            = module.resourcegroup-statementscloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-statementscloudcore-specscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-ststmtsccspecscc-statementscloudcore.name
  virtual_network_subnet_id           = module.subnet-func-specscloudcore-statementscloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-statementscloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "statementscloudcore:Cosmos:DatabaseName"  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-ststmtsccspecscc-statementscloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-ststmtsccspecscc-statementscloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-ststmtsccspecscc-statementscloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-statementscloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-statementscloudcore.connection_string

  }
  depends_on = [module.subnet-func-specscloudcore-statementscloudcore]
}

module "service-plan-ddaacctscloudcore-statementscloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-ddaacctscloudcore-statementscloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-statementscloudcore.name
  location            = module.resourcegroup-statementscloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-statementscloudcore-ddaacctscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-ststmtsccddaacctscc-statementscloudcore.name
  virtual_network_subnet_id           = module.subnet-func-ddaacctscloudcore-statementscloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-statementscloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "statementscloudcore:Cosmos:DatabaseName"  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-ststmtsccddaacctscc-statementscloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-ststmtsccddaacctscc-statementscloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-ststmtsccddaacctscc-statementscloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-statementscloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-statementscloudcore.connection_string

  }
  depends_on = [module.subnet-func-ddaacctscloudcore-statementscloudcore]
}

module "service-plan-cfprovidermap-statementscloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-cfprovidermap-statementscloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-statementscloudcore.name
  location            = module.resourcegroup-statementscloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-statementscloudcore-cfprovidermap-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-ststmtcfprovidermap-statementscloudcore.name
  virtual_network_subnet_id           = module.subnet-func-cfprovidermap-statementscloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-statementscloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "statementscloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-ststmtcfprovidermap-statementscloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-ststmtcfprovidermap-statementscloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-ststmtcfprovidermap-statementscloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-statementscloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-statementscloudcore.connection_string

  }
  depends_on = [module.subnet-func-cfprovidermap-statementscloudcore]
}
