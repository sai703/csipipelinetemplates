locals {
  tags = {
    "CSI_Project"        = "coreservices"
    "CSI_Service"        = "cloud images",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    =  "${var.env}",
    "CSI_Transformation" = "True"
  }
}
