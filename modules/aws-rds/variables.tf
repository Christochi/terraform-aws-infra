variable "ec2-tag" {

  type        = map(string)
  description = "filtering info about the instance"

  default = {

    "name" = "tochi-"

  }

}

variable "db-subnet-grp-name" {

  type        = string
  description = "name of the DB subnet group"

  default = "tochi-rds-subnet-group"


}
variable "db-subnet-tag" {

  description = "db subnet group tag"
  type        = map(string)

  default = {

    prefix = "tochi-rds"

  }

}

variable "create" {

  type        = bool
  description = "control logic to enable or disable creation of a resource"

  default = true

}

variable "db-identifier" {

  type        = string
  description = "name of the RDS instance"

  default = "tochi-rds"

}

variable "db-allocated-storage" {

  type        = number
  description = "allocated storage in gibibytes"

  default = 10

}

variable "max-allocated-storage" {

  type        = number
  description = "upper limit the storage of the DB instance autoscales"

  default = 0 # 0 - disables storage autoscaling

}

variable "db-engine" {

  type        = string
  description = "db engine to use"

  default = "mariadb"

}

variable "engine-version" {

  type        = string
  description = "db engine version to use"

  default = "10.6.5"

}

variable "db-instance" {

  type        = string
  description = "instance type of the RDS instance"

  default = "db.t3.micro"

}

variable "db-name" {

  type        = string
  description = "name of the created db"

  default = "wordpress"

}

variable "db-username" {

  type        = string
  description = "username for the master DB user"

  default = "intern"

}

variable "db-password" {

  type        = string
  description = "password for master user"

  default = "Pass.123"

}

variable "db-tag" {

  type        = map(string)
  description = "filtering info about the instance"

  default = {

    "name" = "tochi-"

  }

}