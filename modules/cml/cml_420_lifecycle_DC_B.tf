
resource "cml2_lifecycle" "ndfc_demo_dc_b" {
  lab_id = cml2_lab.ndfc_demo.id
  elements = [
    cml2_node.DC-B-Spine201.id,
    cml2_node.DC-B-Spine202.id,
    cml2_node.DC-B-Leaf101.id,
    cml2_node.DC-B-Leaf102.id,
    cml2_node.DC-B-BGW101.id,
    cml2_node.DC-B-BGW102.id,
    cml2_node.DC-B-Router01.id
  ]
  staging = {
    stages          = ["dc-b"]
    start_remaining = false
  }
  state = local.dc-b-initial-state
}

 