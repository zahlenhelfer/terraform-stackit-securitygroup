module "sg" {
  source = "../../"
  # Required variables
  project_id = var.project_id
  rule_name  = "https-443-tcp"
}
