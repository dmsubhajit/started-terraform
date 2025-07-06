terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

resource "local_file" "example1" {
  content = "Hello, World!"
  filename= "${path.module}/${var.filename_1}.txt"
}

resource "local_file" "example2" {
  content = "good, World!"
  filename= "${path.module}/${var.filename_2}.md"
}

resource "local_file" "example3" {
  content = "nice, World!"
  filename= "${path.module}/${var.filename_3}.txt"
}

// Local variable
locals {
  base_path = "${path.module}/files"
}

resource "local_file" "example4" {
  content = "Local path!"
  filename= "${local.base_path}/${var.filename_3}.txt"
}


locals {
  environment = "prod" # dev, staging, prod
  upper_case = upper(local.environment)
  base_path_new = "${path.module}/configs/${local.upper_case}"
}

resource "local_file" "server_config1" {
  filename = "${local.base_path_new}/server1.sh"
  content = <<EOT
  environment=${local.environment}
  PORT=3000
  EOT
}

# resource "local_file" "server_config2" {
#   filename = "${local.base_path_new}/server2.sh"
#   content = <<EOT
#   environment=${local.environment}
#   PORT=3000
#   EOT
# }

# resource "local_file" "server_config3" {
#   filename = "${local.base_path_new}/server3.sh"
#   content = <<EOT
#   environment=${local.environment}
#   PORT=3000
#   EOT
# }

# output variables
output "server_config1" {
  value = local_file.server_config1.filename
  # sensitive = true
}

output "server_config1_content" {
  value = local_file.server_config1.content
  sensitive = true
}

output "server_config1_file_permition" {
  value = local_file.server_config1.file_permission
}
