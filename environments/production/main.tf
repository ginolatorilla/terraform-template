resource "local_file" "this" {
  content  = "Hello"
  filename = "hello-production.txt"
}

module "randomfile" {
  source = "../../modules/randomfile"
  length = 16
  path   = "random-${var.path}"
}
