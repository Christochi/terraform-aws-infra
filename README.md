# Terraform-AWS-Webapp

## Description
The Terraform configuration sets up infrastructure for deploying applications. The terraform configuration consists of:
- `modules`
- `packer`
- `setup-nwk`
- `setup-server`
- `setup-database`

## Requirement
- AWS account
- install terraform
- install Packer
- install ansible

## Setup
- spin-up network infrastructure in the [setup-nwk](./setup-nwk/README.md) directory
- build ami image using packer in the [packer](./packer/README.md) directory
- spin-up ec2 instance in the [setup-server](./setup-server/README.md) directory
