terraform {
  required_providers {
    cml2 = {
      source = "registry.terraform.io/ciscodevnet/cml2"
    }
  }
}

variable "vlan" {}
variable "subnet" {}
variable "ip_svi_core01" {}
variable "ip_svi_core02" {}
variable "ip_DC-A-Router01-ext_conn" {}
variable "ip_DC-B-Router01-ext_conn" {}
variable "ndfc_node01" {}
variable "ndfc_node02" {}
variable "ndfc_node03" {}
variable "core_bgp_as" {}
variable "dc-a-bgp-as" {}
variable "dc-b-bgp-as" {}
variable "dc-a-Router01-p2p-bgw101" {}
variable "dc-a-Router01-p2p-bgw102" {}
variable "dc-a-p2p-bgw101_subnet" {}
variable "dc-a-p2p-bgw102_subnet" {}
variable "ndfc_routing_loopback_range" {}
variable "dc-a-bgw101-p2p-Router01" {}
variable "dc-a-bgw102-p2p-Router01" {}
variable "dc-a-bgw101-loopback0" {}
variable "dc-a-bgw102-loopback0" {}