output "network-data" {

  description = "print selected network data in a map"

  value = {

    vpc-id    = aws_vpc.my_vpc.id
    subnet-id = join( "", aws_subnet.public_subnet[*].id ) # separates list 
    sg-id     = aws_security_group.sg.id
    subnet-az = join( "", aws_subnet.public_subnet[*].availability_zone ) # separates list
    

  }
}