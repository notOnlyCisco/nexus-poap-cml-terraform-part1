resource "solidserver_vlan_domain" "ndfc_demo" {
  name = "NDFC Demo"
}



resource "solidserver_vlan" "l3_ext_conn" {
  vlan_domain = solidserver_vlan_domain.ndfc_demo.name
  name        = "NDFC_Ext_conn"
  request_id  = "814"
}

