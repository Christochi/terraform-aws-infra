# compile module aws-ec2
module "instance" {

  source  = "app.terraform.io/harshidevlearn/ec2/aws"
  version = "~> 1.0.0"
  create = true  # true = creates resource, false = does not create

  ansible-playbook = var.playbook

}
