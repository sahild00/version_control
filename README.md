Project 1: Linux EC2 Web Server using Terraform
This project deploys a Linux web server on Amazon EC2 using Terraform.

Resources
Existing default VPC
Existing default subnet
EC2 security group
Amazon Linux 2023 EC2 instance
Apache HTTP Server
EC2 user-data script
Features
Uses Terraform for infrastructure provisioning
Allows inbound HTTP traffic on TCP port 80
Installs Apache automatically using EC2 user data
Hosts a static HTML webpage
Outputs the EC2 instance ID, public IP and website URL
Prerequisites
Terraform
AWS CLI
Valid AWS credentials
Access to AWS region ap-south-1
Deployment
terraform init
terraform fmt -check
terraform validate
terraform plan
terraform apply
