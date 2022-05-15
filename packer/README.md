# Packer

## Description
builds custom ami using an ami image from amazon, uploads the files and installs necessary applications in the custom ami

## Requirement
- install packer
- working knowledge of ansible

## Setup
- cd to `packer/` directory
- after setting up network infra, copy the `vpc-id` and `subnet-id` outputs from the terminal and include them in the `variables.auto.pkrvars.hcl.exp`
- rename the `variables.auto.pkrvars.hcl.exp` to `variables.auto.pkrvars.hcl`
- you can also change the region, instance_type, source_ami **(optional)**
- additional packages/applications can be installed, depending on your use case, by adding to `roles/apache/tasks/main.yml` **(optional)**
- run `packer fmt .` for formatting code **(optional)**
- run `packer validate .` for ensuring no syntax error **(optional)**
- run `packer build .` for building the image