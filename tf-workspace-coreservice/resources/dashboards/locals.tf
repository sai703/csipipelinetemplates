locals {
  env_list = {
    dev  = "Development"
    qa   = "QA"
    stg  = "Staging"
    uat  = "UAT"
    prod = "Production"
  }

  env_long_name = lookup(local.env_list, "dev")
}