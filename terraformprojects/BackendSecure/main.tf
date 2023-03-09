provider "aws" {
  region = "eu-west-2"
}

resource "aws_vpc" "name" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_instance" "test-ec2" {
            ami = "ami-086b3de06dafe36c5"
  instance_type = "t2.micro"

    tags = {
      name = "TestEc2"
    }
  
}