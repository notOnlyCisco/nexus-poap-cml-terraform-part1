resource "solidserver_ip_space" "ndfc_space" {
  name   = "NDFC Demo"
}


resource "solidserver_ip_subnet" "ip_block" {
  space       = solidserver_ip_space.ndfc_space.name
  request_ip  = "10.0.0.0"
  prefix_size = 8
  name        = "NDFC Demo"
  terminal    = false
}

resource "solidserver_ip_subnet" "ext_conn" {
  depends_on = [
    solidserver_ip_subnet.ip_block
  ]
  space       = solidserver_ip_space.ndfc_space.name
  request_ip  = "10.0.14.0"
  prefix_size = 24
  name        = "NDFC Demo"
  terminal    = true
}

