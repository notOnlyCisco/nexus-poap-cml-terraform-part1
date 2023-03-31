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
  configuration  = <<-EOT
    hostname DC-A-Router01
    username admin privilege 15 secret C!sco123
    interface gi1
      ip address ${var.ip_DC-A-Router01-ext_conn} ${cidrnetmask(var.subnet.prefix)}
      no shut
      exit
    interface GigabitEthernet2
      ip address ${var.dc-a-Router01-p2p-bgw101.address} ${cidrnetmask(var.dc-a-p2p-bgw101_subnet.prefix)}
      ip helper-address ${var.ndfc_node01}
      ip helper-address ${var.ndfc_node02}
      ip helper-address ${var.ndfc_node03}
      no shut
      exit
    interface GigabitEthernet3
      ip address ${var.dc-a-Router01-p2p-bgw102.address} ${cidrnetmask(var.dc-a-p2p-bgw102_subnet.prefix)}
      ip helper-address ${var.ndfc_node01}
      ip helper-address ${var.ndfc_node02}
      ip helper-address ${var.ndfc_node03}
      no shut
      exit
    
    line vty 0 4
      privilege level 15
      login local
      transport input ssh
      exit
    router bgp ${var.dc-a-bgp-as}
      bgp log-neighbor-changes
      neighbor ${var.ip_svi_core01} remote-as ${var.core_bgp_as}
      neighbor ${var.ip_svi_core02} remote-as ${var.core_bgp_as}

      address-family ipv4
        redistribute connected
        redistribute static
        neighbor ${var.ip_svi_core01} activate
        neighbor ${var.ip_svi_core02} activate
    end
    EOT 
}


