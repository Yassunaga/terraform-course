locals {
  ip_file_path      = "ips.json"
  json_content_type = "application/json"
  common_tags = {
    Service     = "Terraform Course"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Gabriel Yassunaga"
  }
}