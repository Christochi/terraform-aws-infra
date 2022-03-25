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

## Usage
- you can pass the geographical location of where you want to spin-up the VPC in `setup-nwk/terraform.tfvars`

    ~~~
    region   = "ca-central-1"  
    ~~~

- add any number of subnets (upto a max of 3) in the root module `setup-nwk/main.tf`

    ~~~
    # max of 3 components each
    pub-counter  = 1 # number of public network components to spin up
    priv-counter = 0 # number of private network components to spin up 
    ~~~


## Setup
- configure access and secret key:
- go to `setup-nwk/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd