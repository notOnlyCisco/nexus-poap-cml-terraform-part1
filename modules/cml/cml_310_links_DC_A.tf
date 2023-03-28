// VPC Peer-Link between DC-A-Leaf101 and DC-A-Leaf102

resource "cml2_link" "DC-A-Leaf101_DC-A-Leaf102_vpc_link_1" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Leaf101.id
  node_b = cml2_node.DC-A-Leaf102.id
  slot_a = 31
  slot_b = 31
}

resource "cml2_link" "DC-A-Leaf101_DC-A-Leaf102_vpc_link_2" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Leaf101.id
  node_b = cml2_node.DC-A-Leaf102.id
  slot_a = 32
  slot_b = 32
}


// VPC Peer-Link between DC-A-Leaf103 and DC-A-Leaf104

resource "cml2_link" "DC-A-Leaf103_DC-A-Leaf104_vpc_link_1" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Leaf103.id
  node_b = cml2_node.DC-A-Leaf104.id
  slot_a = 31
  slot_b = 31
}

resource "cml2_link" "DC-A-Leaf103_DC-A-Leaf104_vpc_link_2" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Leaf103.id
  node_b = cml2_node.DC-A-Leaf104.id
  slot_a = 32
  slot_b = 32
}

// VPC Peer-Link between DC-A-BGW101 and DC-A-BGW102

resource "cml2_link" "DC-A-BGW101_DC-A-BGW102_vpc_link_1" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-BGW101.id
  node_b = cml2_node.DC-A-BGW102.id
  slot_a = 31
  slot_b = 31
}

resource "cml2_link" "DC-A-BGW101_DC-A-BGW102_vpc_link_2" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-BGW101.id
  node_b = cml2_node.DC-A-BGW102.id
  slot_a = 32
  slot_b = 32
}

// Links from DC-A-Spine201 to Leaves
resource "cml2_link" "DC-A-Spine201_DC-A-Leaf101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-Leaf101.id
  slot_a = 1
  slot_b = 29
}

resource "cml2_link" "DC-A-Spine201_DC-A-Leaf102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-Leaf102.id
  slot_a = 2
  slot_b = 29
}

resource "cml2_link" "DC-A-Spine201_DC-A-Leaf103" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-Leaf103.id
  slot_a = 3
  slot_b = 29
}

resource "cml2_link" "DC-A-Spine201_DC-A-Leaf104" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-Leaf104.id
  slot_a = 4
  slot_b = 29
}

resource "cml2_link" "DC-A-Spine201_DC-A-BGW101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-BGW101.id
  slot_a = 5
  slot_b = 29
}

resource "cml2_link" "DC-A-Spine201_DC-A-BGW102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine201.id
  node_b = cml2_node.DC-A-BGW102.id
  slot_a = 6
  slot_b = 29
}


// Links from DC-A-Spine201 to Leaves
resource "cml2_link" "DC-A-Spine202_DC-A-Leaf101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-Leaf101.id
  slot_a = 1
  slot_b = 30
}

resource "cml2_link" "DC-A-Spine202_DC-A-Leaf102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-Leaf102.id
  slot_a = 2
  slot_b = 30
}

resource "cml2_link" "DC-A-Spine202_DC-A-Leaf103" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-Leaf103.id
  slot_a = 3
  slot_b = 30
}

resource "cml2_link" "DC-A-Spine202_DC-A-Leaf104" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-Leaf104.id
  slot_a = 4
  slot_b = 30
}

resource "cml2_link" "DC-A-Spine202_DC-A-BGW101" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-BGW101.id
  slot_a = 5
  slot_b = 30
}

resource "cml2_link" "DC-A-Spine202_DC-A-BGW102" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Spine202.id
  node_b = cml2_node.DC-A-BGW102.id
  slot_a = 6
  slot_b = 30
}


// Links from BGW with router
resource "cml2_link" "DC-A-BGW101_DC-A-Router01" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-BGW101.id
  node_b = cml2_node.DC-A-Router01.id
  slot_a = 1
  slot_b = 1
}

resource "cml2_link" "DC-A-BGW102_DC-A-Router01" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-BGW102.id
  node_b = cml2_node.DC-A-Router01.id
  slot_a = 1
  slot_b = 2
}

// Links from Router with External_L2
resource "cml2_link" "DC-A-Router01_L2_SW_EXT_CONN" {
  lab_id = cml2_lab.ndfc_demo.id
  node_a = cml2_node.DC-A-Router01.id
  node_b = cml2_node.L2_SW_EXT_CON.id
  slot_a = 0
  slot_b = 1
}