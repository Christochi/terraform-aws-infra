variable "ec2-tags" {

  type        = map(string)
  description = "filtering info about the instance"

  default = {

    "name" = "tochi-"

  }

}