data "local_file" "username_file" {
  filename = var.USERNAME_FILE_PATH
}

data "local_file" "pass_file" {
  filename = var.PASSWORD_FILE_PATH
}