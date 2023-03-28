terraform {
  cloud {
    hostname     = "terraform.mgmt.dovetail-lab.ca"
    organization = "DOVETAIL"


    workspaces {
      name = "The_Bridge_CML_NDFC"
    }
  }
  required_providers {
    cml2 = {
      source = "registry.terraform.io/ciscodevnet/cml2"
    }
    solidserver = {
      source = "EfficientIP-Labs/solidserver"
    }
    nxos = {
      source = "netascode/nxos"
    }
  }
} 