output "subnet-data" {

  value       = data.aws_subnet.west-subnet.id
  description = "print subnet id"

}

output "custom-ami" {

  value = {
  
    ami-id = data.aws_ami.webserver.id
    ami-name = data.aws_ami.webserver.name
    public-ip = aws_instance.server.public_ip
  
  }

  description = "display custom ami id and name"

}