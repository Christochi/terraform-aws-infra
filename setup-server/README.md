# AWS EC2 Instance

## Description
EC2 Instance is created using a custom ami created through packer. It contains necessary applications for hosting apps.

#### modules
`aws-ec2` module is the called child module

#### setup-server
main.tf is the root module for calling child module

## Requirement
- aws account
- terraform

## Setup
***in `module/aws-ec2/setup.yml`, an ansible playbook is referenced and also to be executed by cloud init as userdata.***

- go to `setup-server/`:
    - run `terraform init` cmd
    - run `terraform plan` cmd
    - run `terraform apply` cmd

***cloud init would fail because there is no ansible playbook to run, but it won't prevent terraform from spinning-up EC2 instance. SSH to the instance,place an ansible playbook at `/etc/ansible/role`, and then run `ansible-playbook etc/ansible/bootstrap.yml` cmd on the terminal to call the bootstrap file that will run the ansible playbook.***