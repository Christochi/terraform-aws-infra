# Terraform-AWS-Webapp

## Description
The Terraform configuration sets up infrastructure for deploying applications. The terraform configuration consists of:
- `modules`
- `packer`
- `setup-database`
- `setup-nwk`
- `setup-server`

## Requirement
- AWS account
- install terraform
- install Packer
- install ansible

## Setup
- spin-up network infrastructure in the [setup-nwk](./setup-nwk/README.md) directory
- build ami image using packer in the [packer](./packer/README.md) directory (need to be done once, unless the image was deleted)

#### EC2 Setup
- do above steps
- spin-up ec2 instance in the [setup-server](./setup-server/README.md) directory

#### Database Setup
- ***in progress***
