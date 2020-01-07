resource "null_resource" "example1" {
  provisioner "local-exec" {
    command = "eval \"$(jq -r '@sh \"FOO=\(.foo) BAZ=\(.baz)\"')\";FOOBAZ=\"$FOO $BAZ\";jq -n --arg foobaz \"$FOOBAZ\" '{\"foobaz\":$foobaz}'"
  }
}
