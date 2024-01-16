/* module "service-plan-eastus2" {
   source                = "git@ssh.dev.azure.com:v3/csiseg/IMG/terraform-csi-function-app?ref=1.0.10"
   name = "service-plan-imaging-ebg-${var.env}-eastus2"
   resource_group_name = module.resourcegroup-eastus2.name
   location = module.resourcegroup-eastus2.location
   sku_name = 
   tags = local.tags
}*/

module "service-plan-SetById" {
  source               = "app.terraform.io/csiseg/function-app/csi"
  version              = "1.0.21"
  app_service_plan     = "plan-SetById-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name  = module.resourcegroup.name
  location             = module.resourcegroup.location
  sku                  = var.sku //"S1"
  os_type              = var.os_type
  tags                 = local.tags
  function_app         = "func-imaging-setbyid-ebg-${var.env}-${var.loc}"
  storage_account_name = module.storage-account-setbyid.name
  virtual_network_subnet_id            = module.subnet-func-SetById.subnet_id
  //tags                                = local.tags
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Cosmos:DatabaseName"               = "items"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
    //"WEBSITE_CONTENTSHARE"                     = "function-setbyidchangedfeed-ebg-sbx-eastus289bf"//"func-imaging-setbyid-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
  depends_on = [module.subnet-func-SetById]
}

module "service-plan-transaction" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-transaction-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-transaction-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-transaction.name
  virtual_network_subnet_id           = module.subnet-func-SetByTransactionId.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Cosmos:DatabaseName"               = "items"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "function-setbytransactionidchangedfeed-ebg-sbx-eastus289bf"//"func-imaging-transaction-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
  depends_on = [module.subnet-func-SetByTransactionId]
}
module "service-plan-ItemById" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-ItemById-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-ItemById-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-item-byID.name
  virtual_network_subnet_id           = module.subnet-func-ItemById.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Cosmos:DatabaseName"               = "items"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "function-byid-changefeed-ebg-sbx-eastus29870"//"func-imaging-itembyid-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
  depends_on = [module.subnet-func-ItemById]
}

module "service-plan-TransactionSubscriber" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-TransactionSubscriber-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-TransactionSubscriber-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-transactionsub.name
  virtual_network_subnet_id           = module.subnet-func-TransactionSubscriber.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
   // "Images:EventHub:TransactionHubName"       = data.azurerm_eventhub.eventhub-ddacore.name //DDA cloud core transaction event
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string //"DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string //"DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string //"DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
   // "WEBSITE_CONTENTSHARE"                     = "function-transactionmatching-ebg-sbx-eastus29870"//"func-imaging-transactionsubscriber-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string
  }
 
  depends_on = [module.subnet-func-TransactionSubscriber]
}

module "service-plan-NuPointException" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-NuPointException-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-NuPointException-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-nupointexception.name
  virtual_network_subnet_id           = module.subnet-func-NuPointException.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Storage:NupointExceptionItem"      = "nupointrepair"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "function-nupointexceptionitem-ebg-sbx-eastus29870"//"func-imaging-x9error-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string

  }
 
  depends_on = [module.subnet-func-NuPointException]
}

module "service-plan-MeridianException" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-MeridianException-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-MeridianException-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-meridianexception.name
  virtual_network_subnet_id           = module.subnet-func-MeridianException.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Storage:MeridianExceptionItem"     = "meridianrepair"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "InputStorage"                             = "meridianrepair"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "function-meridianexceptionitem-ebg-sbx-eastus29870"//"func-imaging-meridianexception-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string

  }
  
  depends_on = [module.subnet-func-MeridianException]
}

module "service-plan-x9subscriber" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-x9subscriber-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-x9subscriber-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-x9sub.name
  virtual_network_subnet_id           = module.subnet-func-x9.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:Storage:X9"                        = "inboundx9"
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string //DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "InputStorage"                             = "inboundx9"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "function-imaging-x9-eastus29f56"//"func-imaging-x9subscriber-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string

  }
 
  depends_on = [module.subnet-func-x9]
}

module "service-plan-x9error" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-x9error-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-x9error-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-x9error.name
  virtual_network_subnet_id           = module.subnet-func-x9Error.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "Images:EventHub:ErrorHubName"             = module.eventhub-errors.name
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string //DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "func-x9errormessage-ebg-sbx-eastus289bf"//"func-imaging-x9error-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string

  }
 
  depends_on = [module.subnet-func-x9Error]
}

module "service-plan-httpfunc" {
  source                              = "app.terraform.io/csiseg/function-app/csi"
  version                             = "1.0.21"
  app_service_plan                    = "plan-httpfunc-imaging-ebg-${var.env}-${var.loc}"
  resource_group_name                 = module.resourcegroup.name
  location                            = module.resourcegroup.location
  sku                                 = var.sku //"S1"
  os_type                             = var.os_type
  tags                                = local.tags
  function_app                        = "func-imaging-httpfunc-ebg-${var.env}-${var.loc}"
  storage_account_name                = module.storage-account-httpfunc.name
  virtual_network_subnet_id           = module.subnet-func-Http-imaging.subnet_id
  identity_type                       = var.identity_type //"UserAssigned"
  user_assigned_identity_resource_ids = [module.azuremanagedidentity.mi_id]
  vnet_route_enabled                  = "true"
  key_vault_reference_identity_id     = module.azuremanagedidentity.mi_id
  function_app_settings = {
    "AZURE_APPCONFIG_URI"                      = module.appconfig.endpoint
    "AZURE_CLIENT_ID"                          = module.azuremanagedidentity.mi_client_id
    "AzureWebJobsDashboard"                    = module.storage-account.primary_connection_string //DefaultEndpointsProtocol=https;AccountName=stimagingebgdevcentralus;AccountKey=AvIZ6dusXViNJs4k8VopsvmlIcVprfKfVq9XgYMXUdZ/9z61A5AObjj2dnFVLtTUfUCoV3bCEceE+AStDR5Zbw==;EndpointSuffix=core.windows.net"
    "AzureWebJobsStorage"                      = module.storage-account.primary_connection_string
    "FUNCTIONS_EXTENSION_VERSION"              = "~4"
    "FUNCTIONS_WORKER_RUNTIME"                 = "dotnet"
    "WEBSITE_CONTENTAZUREFILECONNECTIONSTRING" = module.storage-account.primary_connection_string
   // "WEBSITE_CONTENTSHARE"                     = "func-x9errormessage-ebg-sbx-eastus289bf"//"func-imaging-x9error-${var.loc}"
    "WEBSITE_RUN_FROM_PACKAGE"                 = "1"
    "APPINSIGHTS_INSTRUMENTATIONKEY"           = module.applicationinsights.instrumentation_key
    "APPLICATIONINSIGHTS_CONNECTION_STRING"    = module.applicationinsights.connection_string

  }
 
  depends_on = [module.subnet-func-Http-imaging]
}




