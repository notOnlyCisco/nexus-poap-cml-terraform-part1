terraform {
  required_providers {
    nxos = {
      source                = "netascode/nxos"
      configuration_aliases = [nxos.core01, nxos.core02]
    }

  }
}

variable "vlan" {
  default = "814"
}
variable "subnet" {
  default = "10.0.14.0"
}

variable "subnet_mask" {
  default = 24
}
