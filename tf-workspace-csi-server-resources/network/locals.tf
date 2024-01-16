locals {
  # Prod local tags
  eastus2_tags = {
    "CSI_Project"        = "Server Resources"
    "CSI_Service"        = "Domain Controllers",
    "CSI_Dept"           = "DCOps",
    "CSI_Environment"    = "Prod",
    "CSI_Transformation" = "False"
  }

  centralus_tags = {
    "CSI_Project"        = "RCG Production"
    "CSI_Service"        = "Domain Controllers",
    "CSI_Dept"           = "DCOps",
    "CSI_Environment"    = "Prod",
    "CSI_Transformation" = "False"
  }

  # Nonprod local tags

  eastus2_nonprod_tags = {
    "CSI_Project"        = "Server Resources"
    "CSI_Service"        = "Domain Controllers",
    "CSI_Dept"           = "DCOps",
    "CSI_Environment"    = "NonProd",
    "CSI_Transformation" = "False"
  }

  centralus_nonprod_tags = {
    "CSI_Project"        = "RCG Production"
    "CSI_Service"        = "Domain Controllers",
    "CSI_Dept"           = "DCOps",
    "CSI_Environment"    = "NonProd",
    "CSI_Transformation" = "False"
  }
}