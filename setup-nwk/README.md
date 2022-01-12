# AWS Custom Network
custom network comprises a VPC, 3 private subnets, 3 public subnets, NAT gateway, internet gateways, route tables, security group

## Description
custom network made for deploying web applications

#### modules
`aws-vpc` module is the called child module

#### setup-nwk
root module for calling child module

## Requirement
- aws account
- terraform

## Setup
- configure access and secret key:
- go to `setup-nwk/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd