output "file1_path" {
    description = "This is the path of file1"
    value = local_file.file1.filename
}

output "file2_path" {
    description = "This is the path of file2"
    value = local_file.file2.filename
}