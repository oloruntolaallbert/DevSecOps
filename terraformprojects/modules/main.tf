provider "aws" {
	region = "eu-west-2"
}

module "DB" {
    source = "./DB"

}
module "WEB" {
    source = "./WEB"
}



output "module_output" {
  value = module.DB.private_ip
}
output "module_output_foreip" {
    value = module.WEB.public_ip
}

