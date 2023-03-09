
resource "aws_instance" "DB" {
        ami     = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"

  tags = {
    name = "DB Server"
    }   
}

output "private_ip" {
    value = aws_instance.DB.private_ip
}