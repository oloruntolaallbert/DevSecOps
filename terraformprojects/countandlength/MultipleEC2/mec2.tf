
    
    variable "ec2names" {
      type = list(string)
    }
    
    resource "aws_instance" "mec2" {
        ami  = "ami-086b3de06dafe36c5" #
  instance_type = "t2.micro"
  count = length(var.ec2names)
  tags = {
    "name" = var.ec2names[count.index]
  }
}
  
  output "Privateip" {
    value = aws_instance.mec2.*.private_ip
    
  }