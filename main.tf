resource "stackit_security_group" "example" {
  project_id = var.project_id
  name       = "http-80-tcp"
  labels = {
    "description" = var.rules["http-80-tcp"][4]
  }
}

resource "stackit_security_group_rule" "ingress" {
  project_id        = var.project_id
  security_group_id = stackit_security_group.example.id
  direction         = "ingress"
  ether_type        = "IPv4"


  dynamic "port_range" {
    for_each = var.rules["http-80-tcp"]
    content {
      from = setting.value[0]
      to   = setting.value[1]
    }
  }

  dynamic "protocol" {
    for_each = var.rules["http-80-tcp"]
    content {
      name = setting.value[3]
    }
  }
}
