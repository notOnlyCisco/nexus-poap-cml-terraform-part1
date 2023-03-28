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