resource "local_file" "this" {
  content  = var.content
  filename = var.path
}
