# Packer

## Description
build custom ami using an ami image from amazon, uplosds the web files and install necessary applications used for deploying web apps in the custom ami

## Requirement
- install packer

## Setup
- cd to `packer/` directory
- run `packer fmt .` for formatting code
- run `packer validate .` for ensuring no syntax error
- run `packer build .` for building the image