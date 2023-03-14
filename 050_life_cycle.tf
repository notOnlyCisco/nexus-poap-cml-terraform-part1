resource "cml2_lifecycle" "ndfc_demo" {
  topology = file("NDFC_using_IaC.yaml")
}