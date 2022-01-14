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

  default = "t2.micro"

}

variable "ssh-key" {

  type        = string
  description = "ssh rsa pub key"

  default = "tochi-ssh-keypair"

}