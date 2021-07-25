provider "aws" {
region = "us-east-2"
}

module "instance" {
  source  = "app.terraform.io/project11/instance/aws"
  version = "1.0.3"
}

module "instance_app1-vpc" {
  source  = "app.terraform.io/project11/instance/aws//modules/app1-vpc"
  version = "1.0.3"
  vpc = "brar"
}
output "SERVER-IP" {
value = module.instance.myawsserver-ip
}
