# Packer

## Description
builds custom ami using an ami image from amazon, uploads the files and installs necessary applications used for deploying apps in the custom ami

## Requirement
- install packer

## Setup
- cd to `packer/` directory
- after setting up network infra, copy the `vpc-id` and `subnet-id` outouts from the terminal and include them in the `variables.auto.pkrvars.hcl.exp`
- rename the `variables.auto.pkrvars.hcl.exp` to `variables.auto.pkrvars.hcl`
- you can also change the region, instance_type, source_ami **(optional)**
- additional packages can be installed by adding to `roles/apache/tasks/main.yml`
- run `packer fmt .` for formatting code **(optional)**
- run `packer validate .` for ensuring no syntax error **(optional)**
- run `packer build .` for building the image