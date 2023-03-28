resource "nxos_bridge_domain" "ndfc_demo_ext_conn_core01" {
  provider     = nxos.core01
  fabric_encap = "vlan-${local.ico_input.l3out_network.vlan}"
}