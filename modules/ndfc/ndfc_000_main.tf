terraform {
  required_providers {

    dcnm = {
      source = "CiscoDevNet/dcnm"
    }
  }
}



variable "core01" {}
variable "core02" {}
variable "core_fabric" {}
variable "vlan" {}
variable "subnet" {}
variable "ip_svi_core01" {}
variable "ip_svi_core02" {}
variable "lab_name" {}
variable "ip_DC-A-Router01-ext_conn" {}
variable "ip_DC-B-Router01-ext_conn" {}
variable "core_bgp_as" {}
variable "dc-a-bgp-as" {}
variable "dc-b-bgp-as" {}