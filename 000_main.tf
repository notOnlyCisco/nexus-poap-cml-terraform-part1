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
      source  = "EfficientIP-Labs/solidserver"
      version = "1.1.18"
    }

    nxos = {
      source = "netascode/nxos"
    }


    dcnm = {
      # The CiscoDevNet/dcnm provider supports both NDFC and DCNM
      source = "CiscoDevNet/dcnm"
    }
  }
} 