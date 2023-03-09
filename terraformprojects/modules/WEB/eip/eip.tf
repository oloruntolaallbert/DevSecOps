
variable "eip_m" {
    type = string
  
}

resource "aws_eip" "webeip" {
   //instance = aws_instance.WEB.id
  instance = var.eip_m
  
}
output "eip_m" {
    value = aws_eip.webeip.public_ip
}
