resource "dcnm_policy" "bgp_peering_core01" {
  serial_number = data.dcnm_inventory.core01.serial_number
  template_name = "ext_bgp_neighbor"
  template_props = {
    "asn" : "${var.core_bgp_as}",
    "NEIGHBOR_ASN" : "${var.dc-a-bgp-as}",
    "NEIGHBOR_IP" : "${var.ip_DC-A-Router01-ext_conn}",
    "VRF_NAME" : "",
    "IF_NAME" : "Vlan${var.vlan}"
  }
}

resource "dcnm_policy" "bgp_peering_core02" {
  serial_number = data.dcnm_inventory.core02.serial_number
  template_name = "ext_bgp_neighbor"
  template_props = {
    "asn" : "${var.core_bgp_as}",
    "NEIGHBOR_ASN" : "${var.dc-a-bgp-as}",
    "NEIGHBOR_IP" : "${var.ip_DC-A-Router01-ext_conn}",
    "VRF_NAME" : "",
    "IF_NAME" : "Vlan${var.vlan}"
  }
}