locals {
  service_tags = {
    "CSI_Project"        = "coreservices"
    "CSI_Service"        = "ddacore",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }
}
