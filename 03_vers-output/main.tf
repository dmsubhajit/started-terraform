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