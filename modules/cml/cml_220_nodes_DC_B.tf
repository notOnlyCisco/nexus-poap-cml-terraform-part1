//DC B - Spines 201-202
resource "cml2_node" "DC-B-Spine201" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-Spine201"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = -400
  y              = 600
}

resource "cml2_node" "DC-B-Spine202" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-Spine202"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = -200
  y              = 600
}

//DC B - VPC Peer 101-102
resource "cml2_node" "DC-B-Leaf101" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-Leaf101"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = -600
  y              = 400
}

resource "cml2_node" "DC-B-Leaf102" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-Leaf102"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = -400
  y              = 400
}

//DC B - VPC Peer BGW 101-102
resource "cml2_node" "DC-B-BGW101" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-BGW101"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = -200
  y              = 400
}

resource "cml2_node" "DC-B-BGW102" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-BGW102"
  nodedefinition = "nxosv9000-poap"
  tags           = ["dc-b"]
  x              = 0
  y              = 400
}


// Routers

resource "cml2_node" "DC-B-Router01" {
  lab_id         = cml2_lab.ndfc_demo.id
  label          = "DC-B-Router01"
  nodedefinition = "cat8000v"
  tags           = ["dc-b"]
  x              = 200
  y              = 300
}

