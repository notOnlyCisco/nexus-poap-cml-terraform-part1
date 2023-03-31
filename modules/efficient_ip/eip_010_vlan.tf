resource "solidserver_vlan_domain" "ndfc_demo" {
  name = var.lab_name
}



resource "solidserver_vlan" "l3_ext_conn" {
  vlan_domain = solidserver_vlan_domain.ndfc_demo.name
  name        = "${var.lab_name}_Ext_conn"
  request_id  = "814"
}

