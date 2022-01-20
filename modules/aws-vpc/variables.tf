variable "vpc-cidr" {

  description = "Default Supernet that all networks reside within"
  type        = string
  default     = "10.0.0.0/16"

}

variable "tags" {

  description = "tags used in the module"
  type        = map(string)

  default = {
    prefix = "tochi"
  }

}

variable "cidr_route_table" {

  description = "traffic ip rule for public subnet"
  type        = string
  default     = "0.0.0.0/0"

}

variable "sg-inbound" {

  description = "ip traffic to allow into the subnet"
  type        = string
  default     = "0.0.0.0/0"

}

variable "sg-outbound" {

  description = "ip traffic to allow outside the subnet"
  type        = string
  default     = "0.0.0.0/0"

}