
module "efficient_ip" {
  source = "./modules/efficient_ip"

  lab_name                    = local.lab_name
  ndfc_routing_loopback_range = local.ndfc_routing_loopback_range
  ndfc_vtep_loopback_range    = local.ndfc_vtep_loopback_range
  ndfc_underlay_range         = local.ndfc_underlay_range
  fabric_info                 = var.fabric_info
}


module "cml" {
  depends_on = [
    module.efficient_ip
  ]
  source      = "./modules/cml"
  ddi_info    = module.efficient_ip.ddi_info
  fabric_info = var.fabric_info
  lab_name    = local.lab_name
}

module "nxos" {

  source = "./modules/nxos"
  providers = {
    nxos.core01 = nxos.core01
    nxos.core02 = nxos.core02

  }
  ddi_info    = module.efficient_ip.ddi_info
  fabric_info = var.fabric_info




}

module "ndfc" {
  depends_on = [
    module.efficient_ip
  ]
  source      = "./modules/ndfc"
  lab_name    = local.lab_name
  ddi_info    = module.efficient_ip.ddi_info
  fabric_info = var.fabric_info
}
