resource "aws_instance" "data_test_vm" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name                      = var.name_tag,
    "sevdesk:owner"           = "data-engineering",
    "sevdesk:service"         = "terraformTuto",
    "sevdesk:user-data"       = "false",
    "sevdesk:criticality"     = "low",
    "sevdesk:confidentiality" = "public"
  }
}

resource "aws_s3_bucket" "state_bucket" {
 bucket = "state--891338049334--37i58x"

 tags = {
   Name = "state--891338049334--37i58x"
 }
}