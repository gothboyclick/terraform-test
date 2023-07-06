locals {
      content = "application/json"
      ip_filepath="ips.json"
      common_tags={
            Service = "aprendendo Terraform"
            ManageBy = "terraform"
            env = var.env
            owner = "adriano"
      }
}