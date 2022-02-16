variable "ec2-tags" {

  type        = map(string)
  description = "filtering info about the instance"

  default = {

    "name" = "tochi-"

  }

}

variable "sg-tag" {

  description = "security group tag"
  type        = map(string)

  default = {

    prefix = "tochi"

  }

}

variable "instance" {

  type        = string
  description = "virtual server"

  default = "t3.micro"

}

variable "ssh-key" {

  type        = string
  description = "ssh rsa pub key"

  default = "tochi-ssh-keypair"

}

variable "ansible-playbook" {

  type        = string
  description = "placeholder for ansible vault playbook"

  default = "ansible-mariadb-playbook"

}

variable "create" {

  type        = bool
  description = "control logic to enable or disable creation of a resource"

  default = true

}

variable "regex" {

  type        = string
  description = "string for advanced filtering"

  default = "tochi-custom-ami-*"

}