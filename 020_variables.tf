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

  //CML Route peering
  dc-a-bgp-as = 65101
  dc-b-bgp-as = 65102

}