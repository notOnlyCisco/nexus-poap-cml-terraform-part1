terraform {
  required_providers {
    solidserver = {
      source  = "EfficientIP-Labs/solidserver"
      version = "1.1.18"

    }
  }
}

variable "lab_name" {}
variable "ndfc_routing_loopback_range" {}
variable "ndfc_vtep_loopback_range" {}
variable "ndfc_underlay_range" {}
