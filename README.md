# AWS Terraform Infrastructure Template

Reusable Terraform modules for AWS — provision secure, production-grade VPC, EC2, and S3 infrastructure.  
Automated CI/CD via GitHub Actions for formatting, validation, planning, and deployment.

## 🚀 Features
- Modular IaC design (`vpc`, `ec2`, `s3`)
- GitHub Actions workflow for automated `terraform plan` and `apply`
- Remote backend (S3 + DynamoDB)
- Environment isolation via variable files
- Enforces Terraform fmt, init, validate before deploy

## 🛠️ Tech Stack
Terraform · AWS (VPC, EC2, S3, IAM) · GitHub Actions · YAML

## 📦 How to Use
```bash
terraform init
terraform plan -var-file=environments/dev.tfvars
terraform apply -var-file=environments/dev.tfvars
