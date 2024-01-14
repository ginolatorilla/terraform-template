resource "random_string" "content" {
  length = var.length
}

resource "local_file" "file" {
  filename = var.path
  content  = random_string.content.result
}
