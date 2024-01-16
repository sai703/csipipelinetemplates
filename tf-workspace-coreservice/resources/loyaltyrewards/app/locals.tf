locals {
  tags = {
    "CSI_Project"        = "coreservices"
    "CSI_Service"        = "loyaltyrewards",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }
}