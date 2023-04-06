terraform {
  required_providers {

    dcnm = {
      source = "CiscoDevNet/dcnm"
    }
  }
}


variable "lab_name" {}
variable "ddi_info" {}
variable "fabric_info" {}