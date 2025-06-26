module "sg" {
  source = "../../"
  # Required variables
  project_id = var.project_id
  rule_name  = "http-8080-tcp"
}
