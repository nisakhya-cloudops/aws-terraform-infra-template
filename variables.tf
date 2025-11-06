variable "aws_region" {}
variable "vpc_cidr" {}
variable "public_subnets" {
  type = list(string)
}
variable "private_subnets" {
  type = list(string)
}
variable "ec2_instance_type" {}
variable "ec2_key_name" {}
variable "s3_bucket_name" {}
