provider "aws" {
    region = "eu-west-2"
}


resource "aws_instance" "ec2" {
  ami           = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"
   count = 5
  }


output "multipleEC2" {
    value = aws_instance.ec2.*.private_ip
  
}