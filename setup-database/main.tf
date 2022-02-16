# compile module database
module "instance" {

  source = "../modules/database" # directory of the database module
  create = false # true = creates resource, false = does not create

}

# compile module rds
module "rds" {

  source = "../modules/aws-rds" # directory of the database module
  # create = true # true = creates resource, false = does not create

}

