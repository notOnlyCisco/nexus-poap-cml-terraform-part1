resource "cml2_link" "L2_SW_EXT_CONN_SW_EXT_CONN" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.L2_SW_EXT_CON.id
  node_b = cml2_node.EXT_CON.id
  slot_a = 0
  slot_b = 0
}