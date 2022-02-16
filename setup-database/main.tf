#  local boolean vars used for selecting modules
locals {

  # for module instance
  instance_create = false

  # for module rds
  rds_create = local.instance_create ? false : true

}


# compile module database
module "instance" {

  source = "../modules/database" # directory of the database module
  create = local.instance_create # true = creates resource, false = does not create

}

# compile module rds
module "rds" {

  source = "../modules/aws-rds" # directory of the database module
  create = local.rds_create     # true = creates resource, false = does not create

}

