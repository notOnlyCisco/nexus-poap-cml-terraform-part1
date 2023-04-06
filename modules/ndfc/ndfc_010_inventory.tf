data "dcnm_inventory" "core01" {
  fabric_name = var.fabric_info["CORE"].fabric_name
  switch_name = var.fabric_info["CORE"].core01
}

data "dcnm_inventory" "core02" {
  fabric_name = var.fabric_info["CORE"].fabric_name
  switch_name = var.fabric_info["CORE"].core02
}