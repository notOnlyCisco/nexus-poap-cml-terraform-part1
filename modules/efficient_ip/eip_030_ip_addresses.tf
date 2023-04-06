// IP Addressing between CORE and L3 Device used for External Connection
resource "solidserver_ip_address" "core01_svi_ip" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.ext_conn_subnet.name
  name       = "${var.lab_name}_svi_core01"
  request_ip = cidrhost(solidserver_ip_subnet.ext_conn_subnet.prefix, 1)
}

resource "solidserver_ip_address" "core02_svi_ip" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.ext_conn_subnet.name
  name       = "${var.lab_name}_svi_core02"
  request_ip = cidrhost(solidserver_ip_subnet.ext_conn_subnet.prefix, 2)
}

resource "solidserver_ip_address" "dc-a-router01-ext_conn_ip" {
  depends_on = [
    solidserver_ip_address.core01_svi_ip, solidserver_ip_address.core02_svi_ip
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ext_conn_subnet.name
  name   = "${var.lab_name}_dc-a-router01-ext_conn_ip"
}

resource "solidserver_ip_address" "dc-b-router01-ext_conn_ip" {
  depends_on = [
    solidserver_ip_address.core01_svi_ip, solidserver_ip_address.core02_svi_ip
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ext_conn_subnet.name
  name   = "${var.lab_name}_dc-a-router01-ext_conn_ip"
}

// P2P IPs between DC-A-Router01 and DC-A-BGW101
resource "solidserver_ip_address" "dc-a-Router01-p2p-bgw101" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.dc-a-bgw101-router01_p2p_subnet.name
  name       = "${var.lab_name}_DC-A-Router01-BGW101"
  request_ip = cidrhost(solidserver_ip_subnet.dc-a-bgw101-router01_p2p_subnet.prefix, 1)
}
resource "solidserver_ip_address" "dc-a-bgw101-p2p-Router01" {
  depends_on = [
    solidserver_ip_address.dc-a-Router01-p2p-bgw101
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.dc-a-bgw101-router01_p2p_subnet.name
  name   = "${var.lab_name}_DC-A-BGW101-Router01"
}

// P2P IPs between DC-A-Router01 and DC-A-BGW102
resource "solidserver_ip_address" "dc-a-Router01-p2p-bgw102" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.dc-a-bgw102-router01_p2p_subnet.name
  name       = "${var.lab_name}_DC-A-Router01-BGW102"
  request_ip = cidrhost(solidserver_ip_subnet.dc-a-bgw102-router01_p2p_subnet.prefix, 1)
}
resource "solidserver_ip_address" "dc-a-bgw102-p2p-Router01" {
  depends_on = [
    solidserver_ip_address.dc-a-Router01-p2p-bgw102
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.dc-a-bgw102-router01_p2p_subnet.name
  name   = "${var.lab_name}_DC-A-BGW102-Router01"
}

// Loopback IPs used by BGWs for underlay routing
resource "solidserver_ip_address" "dc-a-bgw101-loopback0" {
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ndfc_routing_loopback_range.name
  name   = "${var.lab_name}_dc-a-bgw101-loopback0"
}

resource "solidserver_ip_address" "dc-a-bgw102-loopback0" {
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ndfc_routing_loopback_range.name
  name   = "${var.lab_name}_dc-a-bgw102-loopback0"
}