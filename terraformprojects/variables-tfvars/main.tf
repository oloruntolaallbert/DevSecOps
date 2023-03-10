provider "aws" {
    region = "eu-west-2"
}

variable "creation_of_instances" {
    type = number
  
}

resource "aws_instance" "ec2" {
  ami           = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"
  count = var.creation_of_instances
  tags = {
    "name" = "ec2_vars"
  }
}
// files most be saved in .tfvars for variables 