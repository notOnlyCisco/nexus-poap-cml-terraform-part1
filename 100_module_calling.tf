
module "efficient_ip" {
  source = "./modules/efficient_ip"

  eip_password   = var.eip_password
  eip_url        = var.eip_url
  eip_username   = var.eip_username
}


module "cml" {
  source = "./modules/cml"

  cml_username   = var.cml_username
  cml_password        = var.cml_password
  cml_address   = var.cml_address
}

module "nxos" {

  source = "./modules/nxos"
  providers = {
    nxos.core01 = nxos.core01
    nxos.core02 = nxos.core02
    // vlan = module.efficient_ip.
    // subnet = module.efficient_ip.ext_conn_subnet
  }
}
