module "sg" {
  source = "../../"
  # Required variables
  project_id = var.project_id
  rule_name  = "ssh-22-tcp"
}
