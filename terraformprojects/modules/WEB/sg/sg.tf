
output "SG_name" {
    value = aws_security_group.WebSG.name
  
}

resource "aws_security_group" "WebSG" {

name = "allow port 80 and 443" 

ingress {
    from_port = 80
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
egress {
    from_port = 80
    to_port = 443
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
}
}
