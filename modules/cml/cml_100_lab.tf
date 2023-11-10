resource "cml2_lab" "ndfc_demo" {
  title       = local.project_title
  description = "NDFC Lab created using Terraform"
  notes       = <<-EOT
  # Heading
  - https://github.com/notOnlyCisco/terraform-cml
  EOT
}