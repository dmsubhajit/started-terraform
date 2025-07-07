terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.3"
    }
  }
}

# module

module "create_files" {
  source = "./file_creator"

  file1_content = "Hello, from file1"
  filename_1    = "myfirst_file.txt"

  file2_content = "Hello, from file2"
  filename_2    = "mysecond_file.txt"
}

output "file_paths" {
  value = [
    module.create_files.file1_path,
    module.create_files.file2_path
  ]
}