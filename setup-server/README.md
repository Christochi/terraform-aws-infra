# AWS EC2 Instance
Instance is created using a custom ami created through packer. It contains necessary applications for hosting a website, including the web files

## Description
server for hosting web application

#### modules
`aws-ec2` module is the called child module

#### setup-server
root module for calling child module

## Requirement
- aws account
- terraform

## Setup
- configure access and secret key:
- go to `setup-server/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd