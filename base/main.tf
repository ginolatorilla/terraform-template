resource "local_file" "this" {
  content  = var.content
  filename = var.path
}

module "randomfile" {
  source = "../../modules/randomfile"
  length = 16
  path   = "random-${var.path}"
}
