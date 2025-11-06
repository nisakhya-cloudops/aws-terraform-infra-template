terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "global/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source          = "./modules/vpc"
  vpc_cidr        = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}

module "ec2" {
  source         = "./modules/ec2"
  vpc_id         = module.vpc.aws_vpc_id
  subnet_ids     = module.vpc.public_subnets
  instance_type  = var.ec2_instance_type
  key_name       = var.ec2_key_name
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.s3_bucket_name
  acl         = "private"
}
