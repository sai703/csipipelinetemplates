module "funcapp-fdxaccounts-ddatransactions" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-fdxaccounts-ddatransactions-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdxaccounts-ddatransactions-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-ddatrx.name
  virtual_network_subnet_id                           = module.subnet-func-ddatransactions.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "APP_CONFIG_LABEL_FILTER"        = "false"
    "AZURE_APPCONFIG_URI"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights_fdx.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights_fdx.connection_string
	  "AzureWebJobsEventHubConnection__ClientId" = module.azuremanagedidentity.mi_client_id
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	  "AzureWebJobsEventHubConnection__Credential" = var.credentials
	  "ConsumerGroup" = var.consumer_trx
    "EventHubName" = var.eventhubname
	  "AzureWebJobsEventHubConnection__FullyQualifiedNamespace" = var.eventhubname_url
    "AzureWebJobsStorage"        = var.storage_ddatrx
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = var.storage_ddatrx
    "WEBSITE_CONTENTSHARE"       = "func-fdxaccounts-ddatransactions-ebg-sbx-eastus2"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.subnet-func-ddatransactions , module.resourcegroup]
}

module "func-fdxaccounts-ddaaccounts" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-fdxaccounts-ddaaccounts-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdxaccounts-ddaaccounts-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-ddaaccts.name
  virtual_network_subnet_id                           = module.subnet-func-ddaaccounts.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "APP_CONFIG_LABEL_FILTER"        = "false"
    "AZURE_APPCONFIG_URI"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights_fdx.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights_fdx.connection_string
	  "AzureWebJobsEventHubConnection__ClientId" = module.azuremanagedidentity.mi_client_id
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	  "AzureWebJobsEventHubConnection__Credential" = var.credentials
	  "ConsumerGroup" = var.consumer_act
    "EventHubName" = var.eventhubname
	  "AzureWebJobsEventHubConnection__FullyQualifiedNamespace" = var.eventhubname_url
    "AzureWebJobsStorage"        = var.storage_ddaact
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = var.storage_ddaact
    "WEBSITE_CONTENTSHARE"       = "func-fdxaccounts-ddaaccounts-ebg-sbx-eastus281d9"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
 depends_on = [module.subnet-func-ddaaccounts , module.resourcegroup]
}

module "func-fdxaccounts-cif" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan    = "plan-fdxaccounts-cif-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-fdxaccounts-cif-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-acctscif.name
  virtual_network_subnet_id                           = module.subnet-func-cif.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "APP_CONFIG_LABEL_FILTER"        = "false"
    "AZURE_APPCONFIG_URI"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights_fdx.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights_fdx.connection_string
	  "AzureWebJobsEventHubConnection__ClientId" = module.azuremanagedidentity.mi_client_id
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	  "AzureWebJobsEventHubConnection__Credential" = var.credentials
	  "ConsumerGroup" = var.consumer_cif
    "EventHubName" = var.eventhubname
	  "AzureWebJobsEventHubConnection__FullyQualifiedNamespace" = var.eventhubname_url
    "AzureWebJobsStorage"        = var.storage_ddacif
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = var.storage_ddacif
    "WEBSITE_CONTENTSHARE"       = "func-fdxaccounts-cif-ebg-sbx-eastus2"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.subnet-func-cif , module.resourcegroup]
}