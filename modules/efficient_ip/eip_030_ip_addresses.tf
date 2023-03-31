resource "solidserver_ip_address" "ip_svi_core01" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.ext_conn.name
  name       = "${var.lab_name}_svi_core01"
  request_ip = cidrhost(solidserver_ip_subnet.ext_conn.prefix, 1)
}

resource "solidserver_ip_address" "ip_svi_core02" {
  space      = solidserver_ip_space.ndfc_space.name
  subnet     = solidserver_ip_subnet.ext_conn.name
  name       = "${var.lab_name}_svi_core02"
  request_ip = cidrhost(solidserver_ip_subnet.ext_conn.prefix, 2)
}

resource "solidserver_ip_address" "ip_DC-A-Router01-ext_conn" {
  depends_on = [
    solidserver_ip_address.ip_svi_core01, solidserver_ip_address.ip_svi_core02
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ext_conn.name
  name   = "${var.lab_name}_DC-A-Router01-ext_conn"
}

resource "solidserver_ip_address" "ip_DC-B-Router01-ext_conn" {
  depends_on = [
    solidserver_ip_address.ip_svi_core01, solidserver_ip_address.ip_svi_core02
  ]
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.ext_conn.name
  name   = "${var.lab_name}_DC-B-Router01-ext_conn"
}

resource "solidserver_ip_address" "dc-a-Router01-p2p-bgw101" {
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.dc-a-p2p-bgw101_subnet.name
  name   = "${var.lab_name}_DC-A-Router01-BGW101"
}

resource "solidserver_ip_address" "dc-a-Router01-p2p-bgw102" {
  space  = solidserver_ip_space.ndfc_space.name
  subnet = solidserver_ip_subnet.dc-a-p2p-bgw102_subnet.name
  name   = "${var.lab_name}_DC-A-Router01-BGW102"
}