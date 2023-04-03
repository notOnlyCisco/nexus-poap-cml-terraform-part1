/*
resource "solidserver_ip_pool" "pool_dc-a-bgw101" {
  space            = solidserver_ip_space.ndfc_space.name
  subnet           = solidserver_ip_subnet.dc-a-p2p-bgw101_subnet.name
  name             = "${var.lab_name}-pool_dc-a-bgw101"
  start            = solidserver_ip_subnet.dc-a-p2p-bgw101_subnet.address
  size             = 3
}
*/