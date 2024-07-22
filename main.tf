resource "aws_instance" "webserver" {
  ami           = var.ami
  instance_type = var.instance_type
  user_data     = file("server_install.sh")

  tags = {
    Name = "Terraform-server"
  }
}