
module "efficient_ip" {
  source = "./modules/efficient_ip"

  lab_name = local.lab_name
}


module "cml" {
  depends_on = [
    module.efficient_ip
  ]
  source                    = "./modules/cml"
  vlan                      = module.efficient_ip.ext_conn_vlan.vlan_id
  subnet                    = module.efficient_ip.ext_conn_subnet
  ip_svi_core01             = module.efficient_ip.ip_svi_core01.address
  ip_svi_core02             = module.efficient_ip.ip_svi_core02.address
  ip_DC-A-Router01-ext_conn = module.efficient_ip.ip_DC-A-Router01-ext_conn.address
  ip_DC-B-Router01-ext_conn = module.efficient_ip.ip_DC-B-Router01-ext_conn.address
  ndfc_node01               = local.ndfc_node01
  ndfc_node02               = local.ndfc_node02
  ndfc_node03               = local.ndfc_node03
  core_bgp_as               = local.core_bgp_as
  dc-a-bgp-as               = local.dc-a-bgp-as
  dc-b-bgp-as               = local.dc-b-bgp-as
  dc-a-Router01-p2p-bgw101  = module.efficient_ip.dc-a-Router01-p2p-bgw101
  dc-a-Router01-p2p-bgw102  = module.efficient_ip.dc-a-Router01-p2p-bgw102
  dc-a-p2p-bgw101_subnet    = module.efficient_ip.dc-a-p2p-bgw101_subnet
  dc-a-p2p-bgw102_subnet    = module.efficient_ip.dc-a-p2p-bgw102_subnet


}

module "nxos" {

  source = "./modules/nxos"
  providers = {
    nxos.core01 = nxos.core01
    nxos.core02 = nxos.core02

  }
  vlan                      = module.efficient_ip.ext_conn_vlan.vlan_id
  subnet                    = module.efficient_ip.ext_conn_subnet
  ip_svi_core01             = module.efficient_ip.ip_svi_core01.address
  ip_svi_core02             = module.efficient_ip.ip_svi_core02.address
  ip_DC-A-Router01-ext_conn = module.efficient_ip.ip_DC-A-Router01-ext_conn.address
  ip_DC-B-Router01-ext_conn = module.efficient_ip.ip_DC-B-Router01-ext_conn.address



}

module "ndfc" {
  depends_on = [
    module.efficient_ip
  ]
  source = "./modules/ndfc"

  core01                    = local.core01
  core02                    = local.core02
  core_fabric               = local.core_fabric
  lab_name                  = local.lab_name
  vlan                      = module.efficient_ip.ext_conn_vlan.vlan_id
  subnet                    = module.efficient_ip.ext_conn_subnet
  ip_svi_core01             = module.efficient_ip.ip_svi_core01.address
  ip_svi_core02             = module.efficient_ip.ip_svi_core02.address
  ip_DC-A-Router01-ext_conn = module.efficient_ip.ip_DC-A-Router01-ext_conn.address
  ip_DC-B-Router01-ext_conn = module.efficient_ip.ip_DC-B-Router01-ext_conn.address
  core_bgp_as               = local.core_bgp_as
  dc-a-bgp-as               = local.dc-a-bgp-as
  dc-b-bgp-as               = local.dc-b-bgp-as
}
