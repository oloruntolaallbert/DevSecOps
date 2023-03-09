provider "aws" {
    region = "eu-west-2"
}

module "mec2" {
    source = "./MultipleEC2"
    ec2names = ["ec2linux","ec2ubuntu","ec2mac"]
}

output "PrivateIp" {
  value = module.mec2.Privateip
}