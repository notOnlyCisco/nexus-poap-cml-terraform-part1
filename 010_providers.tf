provider "cml2" {

  address     = var.cml_address
  username    = var.cml_username
  password    = var.cml_password
  skip_verify = true
}

variable "cml_address" {}
variable "cml_password" {}
variable "cml_username" {}


provider "solidserver" {
  username  = var.eip_username
  password  = var.eip_password
  host      = var.eip_url
  sslverify = "false"
}

variable "eip_username" {}
variable "eip_password" {}
variable "eip_url" {}


provider "nxos" {
  alias    = "core01"
  username = var.nxos_username
  password = var.nxos_password
  url      = var.nxos_core01
}
provider "nxos" {
  alias    = "core02"
  username = var.nxos_username
  password = var.nxos_password
  url      = var.nxos_core02
}

variable "nxos_username" {}
variable "nxos_password" {}
variable "nxos_core01" {}
variable "nxos_core02" {}


provider "dcnm" {
  username = var.ndfc_username
  password = var.ndfc_password
  url      = var.ndfc_url
  insecure = true
  platform = "nd"
}

variable "ndfc_username" {}
variable "ndfc_password" {}
variable "ndfc_url" {}