# compile module aws-vpc
module "vpc" {

  source = "../modules/aws-vpc" # directory of the vpc module

  # max of 3 components each
  pub-counter  = 1 # number of public network components to spin up
  priv-counter = 0 # number of private network components to spin up

}