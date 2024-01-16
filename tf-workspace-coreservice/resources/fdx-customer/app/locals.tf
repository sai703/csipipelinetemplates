locals {

tags = {
    "CSI_Project"        = "Core Services"
    "CSI_Service"        = "FDX Customer",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }
}
