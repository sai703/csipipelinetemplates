locals {

tags_cc = {
    "CSI_Project"        = "Core services"
    "CSI_Service"        = "Customer Core",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }

tags_ccc = {
    "CSI_Project"        = "Core services"
    "CSI_Service"        = "Customer Cloud Core",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }
}