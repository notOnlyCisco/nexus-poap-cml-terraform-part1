
resource "nxos_bridge_domain" "ndfc_demo_ext_conn_core01" {
  provider     = nxos.core01
  fabric_encap = "vlan-${var.ddi_info.ext_conn_vlan_id.vlan_id}"
}

resource "nxos_bridge_domain" "ndfc_demo_ext_conn_core02" {
  provider     = nxos.core02
  fabric_encap = "vlan-${var.ddi_info.ext_conn_vlan_id.vlan_id}"
}



