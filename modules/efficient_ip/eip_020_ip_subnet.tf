resource "solidserver_ip_space" "ndfc_space" {
  name = "NDFC Demo"
}


resource "solidserver_ip_subnet" "ip_block" {
  space       = solidserver_ip_space.ndfc_space.name
  request_ip  = "10.0.0.0"
  prefix_size = 8
  name        = "NDFC Demo"
  terminal    = false
}

resource "solidserver_ip_subnet" "ext_conn" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.ip_block.name
  request_ip  = "10.0.14.0"
  prefix_size = 24
  name        = var.lab_name
  terminal    = true
}

resource "solidserver_ip_subnet" "p2p_supernets" {
  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.ip_block.name
  request_ip  = "10.0.22.0"
  prefix_size = 24
  name        = "${var.lab_name}_p2p_supernets"
  terminal    = false
}

resource "solidserver_ip_subnet" "dc-a-p2p-bgw101_subnet" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.p2p_supernets.name
  prefix_size = 29
  name        = "${var.lab_name}_dc-a-p2p-bgw101"
  terminal    = true
}

resource "solidserver_ip_subnet" "dc-a-p2p-bgw102_subnet" {

  space       = solidserver_ip_space.ndfc_space.name
  block       = solidserver_ip_subnet.p2p_supernets.name
  prefix_size = 29
  name        = "${var.lab_name}_dc-a-p2p-bgw102"
  terminal    = true
}