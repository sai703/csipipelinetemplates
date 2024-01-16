locals {
  short_regions = {
    eastus2   = "eus2"
    centralus = "cus"
  }

  short_region = lookup(local.short_regions, var.location, "")
}