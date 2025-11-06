# AWS Terraform Infra Template

This repository contains a modular Terraform setup for AWS, including:

- **VPC Module**: Creates VPC, public and private subnets.
- **EC2 Module**: Deploys EC2 instances.
- **S3 Module**: Creates S3 buckets.
- **Environments**: Dev and Prod `.tfvars` files.
- **GitHub Actions**: CI workflow to run Terraform plan.

## Usage

1. Clone the repository:

git clone git@github.com:nisakhya-cloudops/aws-terraform-infra-template.git
cd aws-terraform-infra-template

2. Initialize Terraform:

terraform init


3. Plan deployment for dev:

terraform plan -var-file=environments/dev.tfvars


4. Apply deployment for dev:

terraform apply -var-file=environments/dev.tfvars


5. Apply deployment for prod:

terraform apply -var-file=environments/prod.tfvars
