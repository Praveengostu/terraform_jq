resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "echo '{"foo": 0}' | jq ."
  }
}
