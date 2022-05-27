resource "aws_instance" "aws" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    name = "Remote State"
    version = 2
  }
}