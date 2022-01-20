output "subnet-data" {

  value       = data.aws_subnet.west_subnet.id
  description = "print subnet id"

}

output "ec2-data" {

  value = {

    ami-id    = data.aws_ami.webserver.id
    ami-name  = data.aws_ami.webserver.name
    public-ip = aws_instance.server.public_ip
    sg-id     = data.aws_security_groups.sg.ids


  }

  description = "display custom ami id, name, external ip, sg id"

}

output "ansible" {

  value       = data.template_cloudinit_config.config.rendered
  description = "prints the setup.yml contents. see data.tf for more info"

}
