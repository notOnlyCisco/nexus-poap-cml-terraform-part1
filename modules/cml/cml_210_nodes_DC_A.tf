//DC A - Spines 201-202
resource "cml2_node" "DC-A-Spine201" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Spine201"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -600
  y              = -200
}

resource "cml2_node" "DC-A-Spine202" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Spine202"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -400
  y              = -200
}

//DC A - VPC Peer 101-102
resource "cml2_node" "DC-A-Leaf101" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Leaf101"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -1000
  y              = 0
}

resource "cml2_node" "DC-A-Leaf102" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Leaf102"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -800
  y              = 0
}

//DC A - VPC Peer 103-104
resource "cml2_node" "DC-A-Leaf103" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Leaf103"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -600
  y              = 0
}

resource "cml2_node" "DC-A-Leaf104" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Leaf104"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -400
  y              = 0
}

//DC A - VPC Peer BGW 101-102
resource "cml2_node" "DC-A-BGW101" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-BGW101"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = -200
  y              = 0
}

resource "cml2_node" "DC-A-BGW102" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-BGW102"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-a"]
  x              = 0
  y              = 0
}

// Routers
resource "cml2_node" "DC-A-Router01" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-A-Router01"
  nodedefinition = "cat8000v"
  tags           = ["dc-a"]
  x              = 200
  y              = 100
}


