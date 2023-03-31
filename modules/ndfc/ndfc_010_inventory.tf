data "dcnm_inventory" "core01" {
  fabric_name = var.core_fabric
  switch_name = var.core01
}

data "dcnm_inventory" "core02" {
  fabric_name = var.core_fabric
  switch_name = var.core02
}