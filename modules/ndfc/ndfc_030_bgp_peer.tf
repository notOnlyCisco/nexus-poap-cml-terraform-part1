resource "dcnm_policy" "bgp_peering_core01" {
  serial_number = data.dcnm_inventory.core01.serial_number
  template_name = "ext_bgp_neighbor"
  template_props = {
    "asn" : "${var.fabric_info["CORE"].core_bgp_as}",
    "NEIGHBOR_ASN" : "${var.fabric_info["POAP"].dc-a-router-bgp-as}",
    "NEIGHBOR_IP" : "${var.ddi_info.dc-a-router01-ext_conn_ip.address}",
    "VRF_NAME" : "",
    "IF_NAME" : "Vlan${var.ddi_info.ext_conn_vlan_id.vlan_id}"
  }
}

resource "dcnm_policy" "bgp_peering_core02" {
  serial_number = data.dcnm_inventory.core02.serial_number
  template_name = "ext_bgp_neighbor"
  template_props = {
    "asn" : "${var.fabric_info["CORE"].core_bgp_as}",
    "NEIGHBOR_ASN" : "${var.fabric_info["POAP"].dc-a-router-bgp-as}",
    "NEIGHBOR_IP" : "${var.ddi_info.dc-a-router01-ext_conn_ip.address}",
    "VRF_NAME" : "",
    "IF_NAME" : "Vlan${var.ddi_info.ext_conn_vlan_id.vlan_id}"
  }
}

