provider "aws" {
  region = "us-east-1"
}

module "my_vpc" {
  source      = "../modules/vpc"
  vpc_cidr    = "10.0.0.0/16"
  vpc_id      = "${module.my_vpc.vpc_id}"
  subnet_cidr = "10.0.3.0/24"
}  

module "my_ec2" {
  source        = "../modules/ec2"
  ec2_count     = 1
  ami_id        = "ami-077819deb6128c2fb"
  instance_type = "t2.micro"
  subnet_id     = "${module.my_vpc.subnet_id}"
} 