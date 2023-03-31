
resource "cml2_lifecycle" "ndfc_demo_dc_a" {
  lab_id = cml2_lab.ndfc_demo.id
  elements = [
    cml2_node.DC-A-Spine201.id,
    cml2_node.DC-A-Spine202.id,
    cml2_node.DC-A-Leaf101.id,
    cml2_node.DC-A-Leaf102.id,
    cml2_node.DC-A-Leaf103.id,
    cml2_node.DC-A-Leaf104.id,
    cml2_node.DC-A-BGW101.id,
    cml2_node.DC-A-BGW102.id,
    cml2_node.DC-A-Router01.id
  ]
  staging = {
    stages          = ["dc-a"]
    start_remaining = false
  }
  state = local.dc-a-initial-state
}

 