variable "DB" {
    type = string
  
}

variable "WEB" {
    type = string
  
}


resource "aws_instance" "DB" {
        ami     = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"
  tags = {
    name = var.DB
  }
}

resource "aws_instance" "WEB" {
        ami     = "ami-086b3de06dafe36c5" 
  instance_type = "t2.micro"

  security_groups = [ aws_security_group.WebSG.name]
  tags = {
    name = var.WEB
  }
}

resource "aws_eip" "webeip" {
   instance = aws_instance.WEB.id
  
}

resource "aws_security_group" "WebSG" {

name = "allow port 80 and 443" 
ingress {
    from_port = 80
    to_port = 443
    protocol = "tcp"
    cidr_blocks = "0.0.0.0/0"
    ipv6_cidr_blocks = "::/0"
}
egress {
    from_port = 80
    to_port = 443
    protocol = "tcp"
    cidr_blocks = "0.0.0.0/0"
    ipv6_cidr_blocks = "::/0"
}

}





output "eip" {
    value = aws_instance.WEB.public_ip
  
}

output "private_ip" {
    value = aws_instance.DB.private_ip
  
}