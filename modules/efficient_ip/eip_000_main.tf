terraform {
  required_providers {
    solidserver = {
      source = "EfficientIP-Labs/solidserver"
      version = "1.1.18"

    }
  }
}
provider "solidserver" {
  username  = var.eip_username
  password  = var.eip_password
  host      = var.eip_url
  sslverify = "false"
}


variable "eip_username" {
  description = "EIP Username"
}

variable "eip_password" {
  description = "EIP Password"
}

variable "eip_url" {
  description = "EIP URL"
}