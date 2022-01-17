packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}

locals {

  ami_name = "${var.ami_name}-${formatdate("DD-MMM-YYYY-ss-mm-hh", timestamp())}" # -${timestamp() | clean_resource_name}

}
source "amazon-ebs" "tochi-ami" {

  ami_name                = local.ami_name
  ami_description         = "apache installed custom ami"
  region                  = var.region
  instance_type           = var.instance_type
  source_ami              = var.source_ami
  ami_virtualization_type = var.ami_virtualization_type


  subnet_id         = var.subnet_id
  vpc_id            = var.vpc_id
  security_group_id = var.security_group_id

  ssh_username = var.ssh_username

  tags = {

    Name = local.ami_name

  }

}

build {

  sources = ["source.amazon-ebs.tochi-ami"]

  # install packages using ansible
  provisioner "ansible" {

    playbook_file = "./install.yml"
    user          = var.ssh_username
    
  }
  
}


variable "ami_name" {

  type        = string
  description = "ami identifier"
  default     = ""

}

variable "region" {

  type        = string
  description = "location to create ami"
  default     = ""

}

variable "instance_type" {

  type        = string
  description = "type of ec2-instance"
  default     = ""

}

variable "source_ami" {

  type        = string
  description = "volume type to be copied"
  default     = ""

}

variable "ami_virtualization_type" {

  type        = string
  description = "type of virtualization for the AMI you are building"
  default     = ""

}

variable "subnet_id" {

  type        = string
  description = "public subnet id"
  default     = ""

}

variable "vpc_id" {

  type        = string
  description = "vpc id"
  default     = ""

}

variable "security_group_id" {

  type        = string
  description = "sg id"
  default     = ""

}

variable "ssh_username" {

  type        = string
  description = "ssh username for linux"
  default     = ""

}