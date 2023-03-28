resource "solidserver_ip_space" "ndfc_space" {
  name   = "NDFC Demo"
}

resource "solidserver_ip_subnet" "ext_conn" {
  space       = data.solidserver_ip_space.ndfc_demo.name
  request_ip  = "10.0.14.0"
  prefix_size = 24
  name        = "NDFC Demo"
  terminal    = true
}