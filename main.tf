resource "stackit_security_group" "example" {
  project_id = var.project_id
  name       = var.rules["http-80-tcp"][3]
}

resource "stackit_security_group_rule" "ingress" {
  project_id        = var.project_id
  security_group_id = stackit_security_group.example.id
  direction         = "ingress"
  ether_type        = "IPv4"

  port_range {
    from = var.rules["http-80-tcp"][0]
    to   = var.rules["http-80-tcp"][1]
  }

  protocol {
    name = var.rules["http-80-tcp"][3]
  }
}
