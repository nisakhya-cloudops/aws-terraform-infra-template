aws_region       = "us-east-1"
vpc_cidr         = "10.1.0.0/16"
public_subnets   = ["10.1.1.0/24", "10.1.2.0/24"]
private_subnets  = ["10.1.3.0/24", "10.1.4.0/24"]
ec2_instance_type = "t3.medium"
ec2_key_name      = "my-ssh-key"
s3_bucket_name    = "tf-prod-bucket-123456"
