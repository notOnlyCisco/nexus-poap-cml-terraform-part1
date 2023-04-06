locals {
  lab_name = "NDFC_DEMO"

  // Core switches info
  core01      = "OTT-CORE01"
  core02      = "OTT-CORE02"
  core_fabric = "DOVETAIL"
  core_bgp_as = 65001

  //NDFC Cluster info
  ndfc_node01 = "10.0.16.11"
  ndfc_node02 = "10.0.16.12"
  ndfc_node03 = "10.0.16.13"

  // NDFC Fabric info
  ndfc_mgmt_subnet            = "10.0.15.0/24"
  ndfc_data_subnet            = "10.0.16.0/24"
  ndfc_routing_loopback_range = "10.0.17.0/25"
  ndfc_vtep_loopback_range    = "10.0.17.128/25"
  ndfc_underlay_range         = "10.0.18.0/23"

  //CML Route peering
  dc-a-bgp-as        = 65110
  dc-a-router-bgp-as = 65101
  dc-b-bgp-as        = 65111


}

variable "fabric_info" {
  type = map(any)
  default = {
    NDFC = {
      ndfc_node01      = "10.0.16.11"
      ndfc_node02      = "10.0.16.12"
      ndfc_node03      = "10.0.16.13"
      ndfc_mgmt_subnet = "10.0.15.0/24"
      ndfc_data_subnet = "10.0.16.0/24"
    }
    CORE = {
      fabric_name     = "DOVETAIL"
      core01          = "OTT-CORE01"
      core02          = "OTT-CORE02"
      ip_block        = "10.0.0.0/8"
      core_bgp_as     = 65001
      vlan_id         = 814
      ext_conn_subnet = "10.0.14.0/24"

    },
    POAP = {
      fabric_name                 = "The_Bridge"
      ndfc_routing_loopback_range = "10.0.17.0/25"
      ndfc_vtep_loopback_range    = "10.0.17.128/25"
      ndfc_underlay_range         = "10.0.18.0/23"
      p2p_supernet                = "10.0.22.0/24"
      dc-a-bgp-as                 = 65110
      dc-a-router-bgp-as          = 65101
      dc-b-bgp-as                 = 65111
    }

  }
}