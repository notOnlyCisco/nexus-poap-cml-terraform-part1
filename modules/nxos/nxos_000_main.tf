terraform {
  required_providers {
    nxos = {
      source                = "netascode/nxos"
      configuration_aliases = [nxos.core01, nxos.core02]
    }

  }
}

variable "vlan" {}
variable "subnet" {}
variable "ip_svi_core01" {}
variable "ip_svi_core02" {}
variable "ip_DC-A-Router01-ext_conn" {}
variable "ip_DC-B-Router01-ext_conn" {}
