resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "sh a.sh"
  }
}
