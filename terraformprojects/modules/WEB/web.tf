
resource "aws_instance" "WEB" {
        ami     = "ami-086b3de06dafe36c5" 
    instance_type = "t2.micro"
    security_groups = [module.sg.SG_name]
    user_data = file ("./WEB/server.sh")
    tags = {
    name = "WEB Server"
  }
}
output "public_ip" {
    value = module.eip.eip_m
}

module "eip" {
    source = "./eip"
    eip_m = aws_instance.WEB.id
}

module "sg" {
    source = "./sg"
}