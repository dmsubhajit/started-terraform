terraform {
  backend "local" {
    path = "/home/subhajit-das/Desktop/subhajit/terraform/stete_file/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}