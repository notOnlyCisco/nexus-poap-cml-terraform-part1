
resource "nxos_bridge_domain" "ndfc_demo_ext_conn_core01" {
  provider     = nxos.core01
  fabric_encap = "vlan-${var.vlan}"
}

resource "nxos_bridge_domain" "ndfc_demo_ext_conn_core02" {
  provider     = nxos.core02
  fabric_encap = "vlan-${var.vlan}"
}


