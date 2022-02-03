# compile module database
module "instance" {

  source = "../modules/database" # directory of the database module
  create = true # true = creates resource, false = does not create

}