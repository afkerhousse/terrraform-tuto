variable "ami" {
   type        = string
   description = "Ubuntu AMI ID in Frankfurt Region"
   default     = "ami-0faab6bdbac9486fb"
}

variable "instance_type" {
   type        = string
   description = "Instance type"
   default     = "t2.micro"
}

variable "name_tag" {
   type        = string
   description = "Name of the EC2 instance"
   default     = "ec2-dev-terra-tuto"
}

output "public_ip" {
 value       = aws_instance.data_test_vm.public_ip
 description = "Public IP Address of EC2 instance"
}

output "instance_id" {
 value       = aws_instance.data_test_vm.id
 description = "Instance ID"
}