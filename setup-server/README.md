# AWS EC2 Instance

## Description
EC2 Instance is created using a custom ami created through packer. It contains necessary applications for hosting a web app.

#### modules
`aws-ec2` module is the called child module

#### setup-server
main.tf is the root module for calling child module

## Requirement
- aws account
- terraform

## Setup
- configure access and secret key:
- go to `setup-server/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd