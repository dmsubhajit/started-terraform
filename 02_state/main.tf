resource "local_file" "tf_example1" {
    # filename = "01_provider/example1.txt"
    # filename= "${path.module}/example1.txt"
    filename = "${path.module}/example1.txt"
    content = "Hello, example1 new content new"
}

resource "local_sensitive_file" "tf_sensitive_example1" {
  content  = "thdis is a sensitive file"
  filename = "${path.module}/sensitive_example1.txt"
}