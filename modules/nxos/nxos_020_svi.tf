/*
resource "nxos_svi_interface" "svi_core01" {
    provider     = nxos.core01
  interface_id = "Vlan${var.vlan}"
  admin_state  = "up"
}
resource "nxos_ipv4_interface" "ipv4_int_core01" {
    provider     = nxos.core01
  vrf          = "default"
  interface_id = "Vlan${var.vlan}"

}

resource "nxos_ipv4_interface_address" "ip_svi_core01" {
    depends_on = [
      nxos_svi_interface.svi_core01
    ]
    provider     = nxos.core01
  vrf          = "default"
  interface_id = "vlan${var.vlan}"
  address      = "${var.ip_svi_core01}/${var.subnet.prefix_size}"
}

resource "nxos_svi_interface" "svi_core02" {
    provider     = nxos.core02
  interface_id = "vlan${var.vlan}"
  admin_state  = "up"

}

resource "nxos_ipv4_interface_address" "ip_svi_core02" {
    depends_on = [
      nxos_svi_interface.svi_core02
    ]
    provider     = nxos.core02
  vrf          = "default"
  interface_id = "vlan${var.vlan}"
  address      = "${var.ip_svi_core02}/${var.subnet.prefix_size}"
}

*/