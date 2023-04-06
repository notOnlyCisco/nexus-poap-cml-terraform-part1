
output "ddi_info" {
  value = {
    ext_conn_vlan_id = solidserver_vlan.l3_ext_conn_vlan_id
    ext_conn_subnet = solidserver_ip_subnet.ext_conn_subnet
    core01_svi_ip = solidserver_ip_address.core01_svi_ip
    core02_svi_ip = solidserver_ip_address.core02_svi_ip
    dc-a-router01-ext_conn_ip = solidserver_ip_address.dc-a-router01-ext_conn_ip
    dc-b-router01-ext_conn_ip = solidserver_ip_address.dc-b-router01-ext_conn_ip
    dc-a-bgw101-router01_p2p_subnet = solidserver_ip_subnet.dc-a-bgw101-router01_p2p_subnet
    dc-a-Router01-p2p-bgw101 = solidserver_ip_address.dc-a-Router01-p2p-bgw101
    dc-a-bgw101-p2p-Router01 = solidserver_ip_address.dc-a-bgw101-p2p-Router01
    dc-a-bgw102-router01_p2p_subnet = solidserver_ip_subnet.dc-a-bgw102-router01_p2p_subnet
    dc-a-Router01-p2p-bgw102 = solidserver_ip_address.dc-a-Router01-p2p-bgw102
    dc-a-bgw102-p2p-Router01 = solidserver_ip_address.dc-a-bgw102-p2p-Router01
    dc-a-bgw101-loopback0 = solidserver_ip_address.dc-a-bgw101-loopback0
    dc-a-bgw102-loopback0 = solidserver_ip_address.dc-a-bgw102-loopback0
  }
}
