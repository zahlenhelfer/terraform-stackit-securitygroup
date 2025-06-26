resource "stackit_security_group" "example" {
  project_id = var.project_id
  name       = var.rules[var.rule_name][3]
}

resource "stackit_security_group_rule" "ingress" {
  project_id        = var.project_id
  security_group_id = stackit_security_group.example.security_group_id
  direction         = "ingress"
  ether_type        = "IPv4"

  port_range = {
    min = var.rules[var.rule_name][0]
    max = var.rules[var.rule_name][1]
  }

  protocol = {
    name = var.rules[var.rule_name][2]
  }
}
