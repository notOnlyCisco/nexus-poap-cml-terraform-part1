output "ext_conn_vlan" {
  value = solidserver_vlan.l3_ext_conn
}


output "ext_conn_subnet" {
  value = solidserver_ip_subnet.ext_conn
}


output "ip_svi_core01" {
  value = solidserver_ip_address.ip_svi_core01
}

output "ip_svi_core02" {
  value = solidserver_ip_address.ip_svi_core02
}

output "ip_DC-A-Router01-ext_conn" {
  value = solidserver_ip_address.ip_DC-A-Router01-ext_conn
}

output "ip_DC-B-Router01-ext_conn" {
  value = solidserver_ip_address.ip_DC-B-Router01-ext_conn
}

output "dc-a-Router01-p2p-bgw101" {
  value = solidserver_ip_address.dc-a-Router01-p2p-bgw101
}

output "dc-a-Router01-p2p-bgw102" {
  value = solidserver_ip_address.dc-a-Router01-p2p-bgw102
}

output "dc-a-p2p-bgw101_subnet" {
  value = solidserver_ip_subnet.dc-a-p2p-bgw101_subnet
}

output "dc-a-p2p-bgw102_subnet" {
  value = solidserver_ip_subnet.dc-a-p2p-bgw102_subnet
}