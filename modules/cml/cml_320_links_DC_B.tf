// VPC Peer-Link between DC-A-Leaf101 and DC-A-Leaf102

resource "cml2_link" "DC-B-Leaf101_DC-B-Leaf102_vpc_link_1" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Leaf101.id
  node_b = cml2_node.DC-B-Leaf102.id
  slot_a = 31
  slot_b = 31
}

resource "cml2_link" "DC-B-Leaf101_DC-B-Leaf102_vpc_link_2" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Leaf101.id
  node_b = cml2_node.DC-B-Leaf102.id
  slot_a = 32
  slot_b = 32
}



// VPC Peer-Link between DC-B-BGW101 and DC-B-BGW102

resource "cml2_link" "DC-B-BGW101_DC-B-BGW102_vpc_link_1" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-BGW101.id
  node_b = cml2_node.DC-B-BGW102.id
  slot_a = 31
  slot_b = 31
}

resource "cml2_link" "DC-B-BGW101_DC-B-BGW102_vpc_link_2" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-BGW101.id
  node_b = cml2_node.DC-B-BGW102.id
  slot_a = 32
  slot_b = 32
}

// Links from DC-B-Spine201 to Leaves
resource "cml2_link" "DC-B-Spine201_DC-B-Leaf101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine201.id
  node_b = cml2_node.DC-B-Leaf101.id
  slot_a = 1
  slot_b = 29
}

resource "cml2_link" "DC-B-Spine201_DC-B-Leaf102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine201.id
  node_b = cml2_node.DC-B-Leaf102.id
  slot_a = 2
  slot_b = 29
}


resource "cml2_link" "DC-B-Spine201_DC-B-BGW101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine201.id
  node_b = cml2_node.DC-B-BGW101.id
  slot_a = 3
  slot_b = 29
}

resource "cml2_link" "DC-B-Spine201_DC-B-BGW102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine201.id
  node_b = cml2_node.DC-B-BGW102.id
  slot_a = 4
  slot_b = 29
}




// Links from DC-B-Spine202 to Leaves
resource "cml2_link" "DC-B-Spine202_DC-B-Leaf101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine202.id
  node_b = cml2_node.DC-B-Leaf101.id
  slot_a = 1
  slot_b = 30
}

resource "cml2_link" "DC-B-Spine202_DC-B-Leaf102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine202.id
  node_b = cml2_node.DC-B-Leaf102.id
  slot_a = 2
  slot_b = 30
}


resource "cml2_link" "DC-B-Spine202_DC-B-BGW101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine202.id
  node_b = cml2_node.DC-B-BGW101.id
  slot_a = 3
  slot_b = 30
}

resource "cml2_link" "DC-B-Spine202_DC-B-BGW102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Spine202.id
  node_b = cml2_node.DC-B-BGW102.id
  slot_a = 4
  slot_b = 30
}

// Links from BGW with router
resource "cml2_link" "DC-B-BGW101_DC-B-Router01" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-BGW101.id
  node_b = cml2_node.DC-B-Router01.id
  slot_a = 1
  slot_b = 1
}

resource "cml2_link" "DC-B-BGW102_DC-B-Router01" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-BGW102.id
  node_b = cml2_node.DC-B-Router01.id
  slot_a = 1
  slot_b = 2
}

// Links from Router with External_L2
resource "cml2_link" "DC-B-Router01_L2_SW_EXT_CONN" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-B-Router01.id
  node_b = cml2_node.L2_SW_EXT_CON.id
  slot_a = 0
  slot_b = 2
}