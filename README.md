# Terraform-AWS-Webapp

## Description
The Terraform configuration sets up infrastructure for deploying a website or web application. The configuration consists of:
- `modules`
- `packer`
- `setup-nwk`
- `setup-server`

## Requirement
- AWS account
- install terraform
- install Packer
- install ansible

## Setup
- spin-up network infrastructure in the setup-nwk directory
- build ami image using packer in the packer directory
- spin-up ec2 instance in the setup-server directory
