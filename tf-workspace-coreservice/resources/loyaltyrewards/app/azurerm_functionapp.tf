module "funcapp-loyaltyrewards-account" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-account-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-account-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards1.name
  #subnet_id                           = module.subnet-func-account.subnet_id
  virtual_network_subnet_id           = module.subnet-func-account.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards1.primary_connection_string
	  "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards1.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards1.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-accountbe49"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-account]
}

module "func-loyaltyrewards-drawing" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-drawing-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-drawing-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards2.name
  virtual_network_subnet_id           = module.subnet-func-drawing.subnet_id
  #subnet_id                           = module.subnet-func-drawing.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards2.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards2.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards2.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-drawing9afd"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
 depends_on = [module.resourcegroup, module.subnet-func-drawing]
}

module "func-loyaltyrewards-transaction" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-transaction-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-transaction-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards3.name
  #subnet_id                           = module.subnet-func-transaction.subnet_id
  virtual_network_subnet_id           = module.subnet-func-transaction.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards3.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards3.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards3.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-transactionbe49"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-transaction]
}

module "funcapp-loyaltyrewards-transactionruns" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-transactionruns-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-transactionruns-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards4.name
  #subnet_id                           = module.subnet-func-transactionruns.subnet_id
  virtual_network_subnet_id           = module.subnet-func-transactionruns.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	 "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards4.primary_connection_string
   "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards4.primary_connection_string
   "SERVICEBUS_CONNECTION_STRING" = var.service_bus_transruns
   "SERVICEBUS_CONNECTION_STRING__credentials" = "managedidentity"
    "SERVICEBUS_CONNECTION_STRING__clientid" = module.azuremanagedidentity.mi_client_id
    "SubscriptionName" =   "loyaltyrewards"
    "TopicName"  = "host-posted-activity-notifications"
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards4.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "func-loyaltyrewards-transactionruns-ebg-sbx-eastus2"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-transactionruns]
}

module "func-loyaltyrewards-winner" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-winner-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-winner-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards5.name
  #subnet_id                           = module.subnet-func-winner.subnet_id
  virtual_network_subnet_id           = module.subnet-func-winner.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
	  
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards5.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards5.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards5.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-winnerac24"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
 depends_on = [module.resourcegroup, module.subnet-func-winner]
}

module "func-loyaltyrewards-transactionsubscriber" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-transactionsubscriber-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-transactionsubscriber-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards6.name
  #subnet_id                           = module.subnet-func-transactionsubscr.subnet_id
  virtual_network_subnet_id           = module.subnet-func-transactionsubscr.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string 
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards6.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards6.primary_connection_string
    "SERVICEBUS_CONNECTION_STRING"  = var.servicebus_transsubscr
    "SERVICEBUS_CONNECTION_STRING__credentials" = "managedidentity"
    "SERVICEBUS_CONNECTION_STRING__clientid" = module.azuremanagedidentity.mi_client_id
    "SubscriptionName" =   var.subscriptionname
    "TopicName"  = "host-activity"
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards6.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-transactions-subscriberbe49"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-transactionsubscr]
}



module "func-loyaltyrewards-changefeedtransbydate" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-changefeedtransbydate-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-changefeedtransbydate-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards7.name
 #subnet_id                           = module.subnet-func-changefeedbydate.subnet_id
  virtual_network_subnet_id           = module.subnet-func-changefeedbydate.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	  "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards7.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards7.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "Cosmos__credential" =  "managedidentity"
    "Cosmos__clientID"  =  module.azuremanagedidentity.mi_client_id
    "COSMOS_CONNECTION_STRING"   =  var.COSMOS_CONNECTION_STRING
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards7.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-changefeed-transactionbydate8a88"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-changefeedbydate]
}

module "func-loyaltyrewards-changefeedtransbyacc" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.22"
  app_service_plan    = "plan-loyaltyrewards-changefeedtransbyacc-${var.env}-${var.loc}"
  resource_group_name = module.resourcegroup.name
  location            = module.resourcegroup.location
  sku                 = var.sku //"S1"
  os_type             = var.os_type
  tags                = local.tags
  function_app                        = "func-loyaltyrewards-changefeedtransbyacc-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-loyaltyrewards8.name
  #subnet_id                           = module.subnet-func-changefeedbyacc.subnet_id
  virtual_network_subnet_id           = module.subnet-func-changefeedbyacc.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URL"              = module.appconfig.endpoint
	  "APPINSIGHTS_INSTRUMENTATIONKEY"   = module.applicationinsights.instrumentation_key
	  "APPLICATIONINSIGHTS_CONNECTION_STRING" = module.applicationinsights.connection_string
    "AZURE_CLIENT_ID"                  = module.azuremanagedidentity.mi_client_id
	  "AzureWebJobsStorage"        = module.storage-account-loyaltyrewards8.primary_connection_string
    "AzureWebJobsDashboard"            = module.storage-account-loyaltyrewards8.primary_connection_string
    "COSMOS_CONNECTION_STRING"   =  var.COSMOS_CONNECTION_STRING
    "FUNCTIONS_EXTENSION_VERSION"= "~4"
    "FUNCTIONS_WORKER_RUNTIME"   = "dotnet-isolated"
    "Cosmos__credential" =  "managedidentity"
    "Cosmos__clientID"  =  module.azuremanagedidentity.mi_client_id
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING"  = module.storage-account-loyaltyrewards8.primary_connection_string
    "WEBSITE_CONTENTSHARE"       = "loyalty-rewards-changefeed-transactionbyaccount8a88"
    "WEBSITE_RUN_FROM_PACKAGE"   = "1"
  }
  depends_on = [module.resourcegroup, module.subnet-func-changefeedbyacc]
}