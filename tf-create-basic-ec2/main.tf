# Create EC2 instance
provider "aws" {
  region = "eu-west-1"
}
# Cloud provider (AWS)
# Region
# Resource
resource "aws_instance" "app_instance"{
   # AMI ID ami-0c1c30571d2dae5c9 (for Ubuntu 22.04)
   ami = "ami-0c1c30571d2dae5c9"
   # Which instance type(t3.micro)
   instance_type = "t3.micro"
   # Network information (public IP)
   associate_public_ip_address = true
   # Name instance
   tags = {
     Name = "tech504-tom-tf-test-app"
   }
}

# HCL syntax is {key: value}
# Never hardcode secret or access keys in here.
