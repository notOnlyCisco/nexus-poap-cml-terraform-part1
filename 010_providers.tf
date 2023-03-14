provider "cml2" {

  address = var.cml_address
  username    = var.cml_username
  password    = var.cml_password
  skip_verify = true
}

variable "cml_address" {}  
variable "cml_password" {}
variable "cml_username" {}