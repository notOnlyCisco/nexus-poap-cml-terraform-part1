terraform {
  required_providers {
    cml2 = {
      source = "registry.terraform.io/ciscodevnet/cml2"
    }
  }
}

variable "ddi_info" {}
variable "fabric_info" {}
variable "lab_name" {}