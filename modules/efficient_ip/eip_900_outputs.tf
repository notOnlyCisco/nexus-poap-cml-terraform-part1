output "ext_conn_vlan" {
  value = solidserver_vlan.l3_ext_conn
}

output "ext_conn_subnet" {
  value = solidserver_ip_subnet.ext_conn
}
