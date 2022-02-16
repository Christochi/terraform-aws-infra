output "instance-data" {

  value = {
    subnet = module.instance.subnet-data
    ami    = module.instance.ec2-data
  }

  description = "display subnet id, ami id and ami name"

}

output "ansible" {

  value = module.instance.ansible

}