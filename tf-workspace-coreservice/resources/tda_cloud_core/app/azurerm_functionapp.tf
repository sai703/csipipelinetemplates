module "service-plan-tdacloudcore-tdatransactionscloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "plan-tdacc-tdatransxncc-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-tdacc-tdatransxncc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-sttdacctdatrxcc.name
  virtual_network_subnet_id           = module.subnet-func-tdacloudcore-tdatransactionscloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "TDACloudCore:EventHub:TransactionHubName" = module.eventhub-tdatransactionscloudcore.name
    "AzureWebJobsDashboard"                    = module.storage-account-sttdacctdatrxcc.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-sttdacctdatrxcc.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-sttdacctdatrxcc.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
}

module "service-plan-tdacloudcore-tdaaccountscloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "plan-tdacc-tdaacctscc-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-tdacc-tdaacctscc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-sttdacctdaacctscc.name
  virtual_network_subnet_id           = module.subnet-func-tdacloudcore-tdaaccountscloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "TDACloudCore:EventHub:AccountHubName"     = module.eventhub-tdaaccountscloudcore.name
    "AzureWebJobsDashboard"                    = module.storage-account-sttdacctdaacctscc.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-sttdacctdaacctscc.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-sttdacctdaacctscc.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
}

module "service-plan-tdacloudcore-customercloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "plan-tdacc-customercc-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-tdacc-customercc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddcustomerpecscc.name
  virtual_network_subnet_id           = module.subnet-func-tdacloudcore-customercloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "TDACloudCore:EventHub:AccountHubName"     = module.eventhub-tdacustomerscloudcore.name
    "AzureWebJobsDashboard"                    = module.storage-account-stddcustomerpecscc.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddcustomerpecscc.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddcustomerpecscc.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
}
module "service-plan-tdacloudcore-tdaaccountchangescloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "plan-tdacc-tdaaccountscc-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-tdacc-tdaaccountscc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-sttdacctrxchangescc.name
  virtual_network_subnet_id           = module.subnet-func-tdacloudcore-accountchangescloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "TDACloudCore:EventHub:AccountHubName"     = module.eventhub-tdaaccountchangescloudcore.name
    "AzureWebJobsDashboard"                    = module.storage-account-sttdacctrxchangescc.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-sttdacctrxchangescc.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-sttdacctrxchangescc.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
}

module "service-plan-tdacloudcore-tdatranslatescloudcore" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.22"
  app_service_plan                    = "plan-tdacc-tdatranslatescc-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-tdacc-tdatranslatescc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-sttdacctranslatescc.name
  virtual_network_subnet_id           = module.subnet-func-tdacloudcore-translatescloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "TDACloudCore:EventHub:TransactionHubName" = module.eventhub-tdatransactionscloudcore.name
    "AzureWebJobsDashboard"                    = module.storage-account-sttdacctranslatescc.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-sttdacctranslatescc.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-sttdacctranslatescc.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
}



# module "service-plan-tdacloudcore-specscloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-specscc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-specscc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdaccspecscc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-specscloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-translatescloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-translatescc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-translatescc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdacctranslatescc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-translatescloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-imagescloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-imagescc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-imagescc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdaccimagescc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-imagescloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-transactionchangescloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-transxnchgscc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-transxnchgscc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdacctrxchangescc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-transactionchangescloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-accountchangescloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-acctchgscc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-acctchgscc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdaccacctchangescc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-accountchangescloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-rtscloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-rtscc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-rtscc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdaccrtscc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-rtscloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }

# module "service-plan-tdacloudcore-customerchangescloudcore" {
#   source                              = "app.terraform.io/csiseg/function-app/csi"
#   version                             = "1.0.22"
#   app_service_plan                    = "plan-tdacc-custchgscc-ebg-${var.env}-${var.loc}"
#   resource_group_name                 = module.resourcegroup.name
#   location                            = module.resourcegroup.location
#   sku                                 = var.sku //"S1"
#   os_type                             = var.os_type
#   tags                                = local.tags
#   function_app                        = "func-tdacc-custchgscc-ebg-${var.env}-${var.loc}"
#   storage_account_name                = module.storage-account-sttdcustomerchangescc.name
#   virtual_network_subnet_id                          = module.subnet-func-tdacloudcore-customerchangescloudcore.subnet_id
#   identity_type                       = var.identity_type //"UserAssigned"
#   user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
#   vnet_route_enabled                  = "true"
#   key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
#   function_app_settings = {
# }
# }