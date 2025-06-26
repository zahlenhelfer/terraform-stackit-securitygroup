variable "rules" {
  type = map(list(any))
  default = {
    "http-80-tcp"    = [80, 80, "tcp", "HTTP"]
    "http-8080-tcp"  = [8080, 8080, "tcp", "HTTP"]
    "https-443-tcp"  = [443, 443, "tcp", "HTTPS"]
    "https-8443-tcp" = [8443, 8443, "tcp", "HTTPS"]
    "ssh-22-tcp"     = [22, 22, "tcp", "SSH"]
  }
}

variable "project_id" {
  type        = string
  description = "The ID of the project in which the resource belongs."
}
