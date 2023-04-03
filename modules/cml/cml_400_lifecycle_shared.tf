/*
resource "cml2_lifecycle" "ndfc_demo_shared" {
  lab_id = cml2_lab.ndfc_demo.id
  elements = [
    cml2_node.EXT_CON.id,
    cml2_node.L2_SW_EXT_CON.id
  ]
  staging = {
    stages          = ["shared"]
    start_remaining = false
  }
  state = local.shared_infra-initial-state
}

 */