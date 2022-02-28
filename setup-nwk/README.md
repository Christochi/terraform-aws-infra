# AWS Custom Network
custom network comprises a VPC, 3 private subnets, 3 public subnets, NAT gateway, internet gateways, route tables, security group, etc

## Description
custom network made for deploying web applications

#### modules
`aws-vpc` module is the module being called

#### setup-nwk 
- `main.tf` in this directory is the root module for calling child module
-  you can change the region of the network infra in `terraform.tfvars`

## Requirement
- aws account
- terraform

## Setup
- configure access and secret key:
- go to `setup-nwk/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd