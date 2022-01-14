# Packer

## Description
build custom ami using an ami image from amazon, uplosds the web files and install necessary applications used for deploying web apps in the custom ami

## Requirement
- install packer

## Setup
- cd to `packer/` directory
- copy the `vpc-id` and `subnet-id` from the terminal and include them in the `variables.auto.pkrvars.hcl.exp`
- rename the `variables.auto.pkrvars.hcl.exp` to `variables.auto.pkrvars.hcl`
- you can also change the region, instance_type, source_ami **(optional)**
- additional packages can be installed by adding to `roles/apache/tasks/main.yml`
- run `packer fmt .` for formatting code
- run `packer validate .` for ensuring no syntax error
- run `packer build .` for building the image