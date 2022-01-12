output "network-data" {

    description = "print selected network data in a map"

    value = {

        vpc-id = aws_vpc.my_vpc.id
        subnet-id = aws_subnet.public_subnet[2].id
        sg-id = aws_security_group.sg.id

    }
}