// Space and supernet to be used by the lab
resource "solidserver_ip_space" "ndfc_space" {
  name = var.lab_name
}

resource "solidserver_ip_subnet" "ip_block" {
  space       = solidserver_ip_space.ndfc_space.name
  request_ip  = split("/", var.fabric_info["CORE"].ip_block)[0]
  prefix_size = split("/", var.fabric_info["CORE"].ip_block)[1]
  name        = var.lab_name
  terminal    = false
}

// Subnet between CORE and L3 device for External Connection
resource "solidserver_ip_subnet" "ext_conn_subnet" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.ip_block.name
  request_ip  = split("/", var.fabric_info["CORE"].ext_conn_subnet)[0]
  prefix_size = split("/", var.fabric_info["CORE"].ext_conn_subnet)[1]
  name        = var.lab_name
  terminal    = true
}

// Supernet for P2P between L3 device for External Connection and BGWs

resource "solidserver_ip_subnet" "p2p_supernet" {
  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.ip_block.name
  request_ip  = split("/", var.fabric_info["POAP"].p2p_supernet)[0]
  prefix_size = split("/", var.fabric_info["POAP"].p2p_supernet)[1]
  name        = "${var.lab_name}_p2p_supernet"
  terminal    = false
}

// Subnet for P2P between L3 device for External Connection and BGWs

resource "solidserver_ip_subnet" "dc-a-bgw101-router01_p2p_subnet" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.p2p_supernet.name
  prefix_size = 29
  name        = "${var.lab_name}_dc-a-bgw101-router01_p2p_subnet"
  terminal    = true
}

resource "solidserver_ip_subnet" "dc-a-bgw102-router01_p2p_subnet" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.p2p_supernet.name
  prefix_size = 29
  name        = "${var.lab_name}_dc-a-bgw102-router01_p2p_subnet"
  terminal    = true
}

// Subnet for NDFC routing loopbacks
resource "solidserver_ip_subnet" "ndfc_routing_loopback_range" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.ip_block.name
  request_ip  = split("/", var.fabric_info["POAP"].ndfc_routing_loopback_range)[0]
  prefix_size = split("/", var.fabric_info["POAP"].ndfc_routing_loopback_range)[1]
  name        = "${var.lab_name}_ndfc_routing_loopback_range"
  terminal    = true
}