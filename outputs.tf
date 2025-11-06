output "vpc_id" {
  value = module.vpc.aws_vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "ec2_instance_id" {
  value = module.ec2.aws_instance_id
}

output "s3_bucket" {
  value = module.s3.bucket_name
}
