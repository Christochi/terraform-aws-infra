# compile module aws-ec2
module "instance" {

  source = "../modules/aws-ec2" # directory of the aws-ec2 module
  create = true                 # true = creates resource, false = does not create

  ansible-playbook = var.playbook

}