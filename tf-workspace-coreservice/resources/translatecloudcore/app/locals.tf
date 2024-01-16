locals {

tags_tc = {
    "CSI_Project"        = "Core Services"
    "CSI_Service"        = "Translates Core",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }

tags_tcc = {
    "CSI_Project"        = "Core Services"
    "CSI_Service"        = "Translates Cloud Core",
    "CSI_Dept"           = "EBG",
    "CSI_Environment"    = "${var.env}",
    "CSI_Transformation" = "True"
  }
}
