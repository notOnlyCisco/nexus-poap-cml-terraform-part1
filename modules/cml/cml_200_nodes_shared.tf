//Unmanaged Switch
resource "cml2_node" "L2_SW_EXT_CON" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "L2_SW_EXT_CON"
  nodedefinition = "unmanaged_switch"
  tags           = ["shared"]
  x              = 400
  y              = 200
}

//External Conn
resource "cml2_node" "EXT_CON" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "SW_EXT_CON"
  nodedefinition = "external_connector"
  tags           = ["shared"]
  x              = 600
  y              = 200
  configuration  = "bridge${var.ddi_info.ext_conn_vlan_id.vlan_id}"
}