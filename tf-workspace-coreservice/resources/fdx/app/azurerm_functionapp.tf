module "service-plan-ddatransactions-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-ddatransactions-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-ddatransactions-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxddatrx-fdx.name
  virtual_network_subnet_id           = module.subnet-func-ddatransactions-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-ddatransactionscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxddatrx-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxddatrx-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxddatrx-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-ddatransactions-fdx]
}

module "service-plan-ddaaccounts-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-ddaaccounts-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-ddaaccounts-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxddaaccts-fdx.name
  virtual_network_subnet_id           = module.subnet-func-ddaaccounts-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-ddaaccountscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxddaaccts-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxddaaccts-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxddaaccts-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-ddaaccounts-fdx]
}

module "service-plan-lnstransactions-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-lnstransactions-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-lnstransactions-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxlnstrxx-fdx.name
  virtual_network_subnet_id           = module.subnet-func-lnstransactions-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-lnstransactionscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxlnstrxx-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxlnstrxx-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxlnstrxx-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-lnstransactions-fdx]
}


module "service-plan-lnsaccounts-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-lnsaccounts-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-lnsaccounts-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxlnsaccts-fdx.name
  virtual_network_subnet_id           = module.subnet-func-lnsaccounts-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-lnsaccountscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxlnsaccts-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxlnsaccts-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxlnsaccts-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-lnsaccounts-fdx]
}


module "service-plan-tdatransactions-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-tdatransactions-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-tdatransactions-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxtdatrx-fdx.name
  virtual_network_subnet_id           = module.subnet-func-tdatransactions-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-tdatransactionscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxtdatrx-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxtdatrx-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxtdatrx-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-tdatransactions-fdx]
}

module "service-plan-tdaaccounts-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-tdaaccounts-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-tdaaccounts-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxtdaaccts-fdx.name
  virtual_network_subnet_id           = module.subnet-func-tdaaccounts-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-tdaaccountscloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxtdaaccts-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxtdaaccts-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxtdaaccts-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-tdaaccounts-fdx]
}

module "service-plan-cif-fdx" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-cif-fdx-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-fdx.name
  location            = module.resourcegroup-fdx.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdx-cif-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stfdxcif-fdx.name
  virtual_network_subnet_id           = module.subnet-func-cif-fdx.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-fdx.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "fdx:EventHub:TransactionHubName"          = module.eventhub-cifcloudcore.name
    "fdx:Cosmos:DatabaseName"                  = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stfdxcif-fdx.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stfdxcif-fdx.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stfdxcif-fdx.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-fdx.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-fdx.connection_string

  }
  depends_on = [module.subnet-func-cif-fdx]
}