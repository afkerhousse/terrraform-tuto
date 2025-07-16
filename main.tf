resource "aws_instance" "data_test_vm" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name                      = var.name_tag
  }
}
