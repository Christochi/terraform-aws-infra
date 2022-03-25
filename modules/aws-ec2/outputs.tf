output "subnet-data" {

  value       = data.aws_subnet.west_subnet.id
  description = "print subnet id"

}

output "ec2-data" {

  value = {

    ami-id    = data.aws_ami.webserver.id
    ami-name  = data.aws_ami.webserver.name
    public-ip = join( "", aws_instance.server[*].public_ip ) # separates list
    sg-id     = join( "", data.aws_security_groups.sg.ids ) # separates list


  }

  description = "display custom ami id, name, external ip, sg id"

}

# see comment in data.tf for more info on how to see the 
# output in plain text"
output "ansible" {

  value       = data.template_cloudinit_config.config.rendered
  description = "prints the setup.yml contents"

}
