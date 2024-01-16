module "service-plan-specscloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-specscloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-specscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stgstddaccspecscc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-specscloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:specscloudcoreHubName" = data.azurerm_eventhub.specscloudcore_eventhub.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stgstddaccspecscc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stgstddaccspecscc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stgstddaccspecscc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-specscloudcore-ddacloudcore]
}

module "service-plan-translatescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-translatescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-translatescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddacctranslatescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-translatescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    //"ddacloudcore:EventHub:translatescloudcoreName" = module.eventhub-translatescloudcore.name
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddacctranslatescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddacctranslatescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddacctranslatescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-translatescloudcore-ddacloudcore]
}

module "service-plan-ddatransactionscloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-ddatransactionscloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-ddatransactionscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccddatrxcc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-ddatransactionscloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:ddatransactionscloudcoreName" = data.azurerm_eventhub.ddatransactionscore_eventhub.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccddatrxcc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccddatrxcc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccddatrxcc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-ddatransactionscloudcore-ddacloudcore]
}

module "service-plan-ddaaccountscloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-ddaaccountscloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-ddaaccountscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccddaacctscc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-ddaaccountscloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:ddaaccountscloudcoreName" = data.azurerm_eventhub.ddaaccountscore_eventhub.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "ddacloudcore:EventHub:dddaaccountscloudcoreName" = data.azurerm_eventhub.ddaaccountscore_eventhub.name
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccddaacctscc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccddaacctscc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccddaacctscc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-ddaaccountscloudcore-ddacloudcore]
}

module "service-plan-runningbalance-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-runningbalance-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-runningbalance-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccrunbal-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-runningbalance-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items" 
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccrunbal-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccrunbal-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccrunbal-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-runningbalance-ddacloudcore]
}

module "service-plan-imagescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-imagescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-imagescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccimagescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-imagescloudcore-ddacloudcore.subnet_id
  
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccimagescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccimagescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccimagescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-imagescloudcore-ddacloudcore]
}

module "service-plan-transactionchangescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-transactionchangescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-transactionchangescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddacctrxchangescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-transactionchangescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddacctrxchangescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddacctrxchangescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddacctrxchangescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-transactionchangescloudcore-ddacloudcore]
}

module "service-plan-accountchangescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-accountchangescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-accountchangescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccacctchangescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-accountchangescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccacctchangescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccacctchangescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccacctchangescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-accountchangescloudcore-ddacloudcore]
}

module "service-plan-rtscloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-rtscloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-rtsaccountscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccrtscc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-rtscloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
        "ddacloudcore:EventHub:rtsaccountscloudcoreName" = data.azurerm_eventhub.evh_rtsddamaster.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccrtscc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccrtscc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccrtscc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-rtscloudcore-ddacloudcore]
}


module "service-plan-specschangescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-specschangescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-specschangescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddacctspecchangescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-specschangescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddacctspecchangescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddacctspecchangescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddacctspecchangescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string
  }
  depends_on = [module.subnet-func-specschangescloudcore-ddacloudcore]
}

module "service-plan-ddamemocloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-ddamemocloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-ddamemocloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccddamemocc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-ddamemocloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:ddamemocloudcoreHubName" = data.azurerm_eventhub.ddamemocloudcore_eventhub.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccddamemocc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccddamemocc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccddamemocc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-ddamemocloudcore-ddacloudcore]
}

module "service-plan-rtsnewaccountscloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-rtsnewaccountscloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-rtsnewaccountscloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccrtsnewacctcc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-rtsnewaccountscloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:rtsnewaccountscloudcoreHubName" = data.azurerm_eventhub.evh_rtsnewacct.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccrtsnewacctcc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccrtsnewacctcc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccrtsnewacctcc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-rtsnewaccountscloudcore-ddacloudcore]
}


module "service-plan-rtsbalancescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-rtsbalancescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-rtsbalancescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddaccrtsbalancescc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-rtsbalancescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:EventHub:rtsbalancescloudcoreHubName" = data.azurerm_eventhub.evh_rtsmontrx.id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddaccrtsbalancescc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddaccrtsbalancescc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddaccrtsbalancescc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-rtsbalancescloudcore-ddacloudcore]
}


module "service-plan-translateschangescloudcore-ddacloudcore" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-translateschangescloudcore-ddacloudcore-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup-ddacloudcore.name
  location            = module.resourcegroup-ddacloudcore.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-ddacloudcore-translateschangescloudcore-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-stddactxlatschngscc-ddacloudcore.name
  virtual_network_subnet_id           = module.subnet-func-translateschangescloudcore-ddacloudcore.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig-ddacloudcore.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "ddacloudcore:Cosmos:DatabaseName"         = "items"
    "AzureWebJobsDashboard"                    = module.storage-account-stddactxlatschngscc-ddacloudcore.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account-stddactxlatschngscc-ddacloudcore.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account-stddactxlatschngscc-ddacloudcore.primary_connection_string
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights-ddacloudcore.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights-ddacloudcore.connection_string

  }
  depends_on = [module.subnet-func-translateschangescloudcore-ddacloudcore]
}


