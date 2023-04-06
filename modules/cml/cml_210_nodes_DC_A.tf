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
      ip address ${var.ddi_info.dc-a-router01-ext_conn_ip.address} ${cidrnetmask(var.ddi_info.ext_conn_subnet.prefix)}
      no shut
      exit
    interface GigabitEthernet2
      ip address ${var.ddi_info.dc-a-Router01-p2p-bgw101.address} ${cidrnetmask(var.ddi_info.dc-a-bgw101-router01_p2p_subnet.prefix)}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node01}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node02}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node03}
      no shut
      exit
    interface GigabitEthernet3
      ip address ${var.ddi_info.dc-a-Router01-p2p-bgw102.address} ${cidrnetmask(var.ddi_info.dc-a-bgw102-router01_p2p_subnet.prefix)}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node01}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node02}
      ip helper-address ${var.fabric_info["NDFC"].ndfc_node03}
      no shut
      exit
    
    line vty 0 4
      privilege level 15
      login local
      transport input ssh
      exit
    
    ip route ${var.ddi_info.dc-a-bgw101-loopback0.address} 255.255.255.255 ${var.ddi_info.dc-a-bgw101-p2p-Router01.address}
    ip route ${var.ddi_info.dc-a-bgw102-loopback0.address} 255.255.255.255 ${var.ddi_info.dc-a-bgw102-p2p-Router01.address}

    router bgp ${var.fabric_info["POAP"]. dc-a-router-bgp-as}
      bgp log-neighbor-changes
      neighbor ${var.ddi_info.core01_svi_ip.address} remote-as ${var.fabric_info["CORE"].core_bgp_as}
      neighbor ${var.ddi_info.core02_svi_ip.address} remote-as ${var.fabric_info["CORE"].core_bgp_as}
      neighbor ${var.ddi_info.dc-a-bgw101-loopback0.address} remote-as ${var.fabric_info["POAP"].dc-a-bgp-as}
      neighbor ${var.ddi_info.dc-a-bgw102-loopback0.address} remote-as ${var.fabric_info["POAP"].dc-a-bgp-as}

      address-family ipv4
      maximum-paths 4
        redistribute connected
        redistribute static
        neighbor ${var.ddi_info.core01_svi_ip.address} activate
        neighbor ${var.ddi_info.core02_svi_ip.address} activate
        neighbor ${var.ddi_info.dc-a-bgw101-loopback0.address} activate
        neighbor ${var.ddi_info.dc-a-bgw101-loopback0.address} next-hop-self
        neighbor ${var.ddi_info.dc-a-bgw101-loopback0.address} update-source Gigabit 2
        neighbor ${var.ddi_info.dc-a-bgw101-loopback0.address} ebgp-multihop 5
        neighbor ${var.ddi_info.dc-a-bgw102-loopback0.address} activate
        neighbor ${var.ddi_info.dc-a-bgw102-loopback0.address} next-hop-self
        neighbor ${var.ddi_info.dc-a-bgw102-loopback0.address} update-source Gigabit 3
        neighbor ${var.ddi_info.dc-a-bgw102-loopback0.address} ebgp-multihop 5

    end
    EOT 
}


