/*
resource "dcnm_network" "ext_conn" {
  fabric_name     = var.core_fabric
  name            = "${var.lab_name}"
  vrf_name        = "default"
  vlan_id         = var.vlan
  ipv4_gateway    = "${var.ip_svi_core01}/${var.subnet.prefix_size}"


  deploy = true
  attachments {
    serial_number = data.dcnm_inventory.core01.serial_number
    vlan_id       = var.vlan

  }
}
*/