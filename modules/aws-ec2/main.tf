# fetch subnet id
data "aws_subnet" "west-subnet" {

  filter {

    name   = "tag:Name"
    values = ["${var.ec2-tags.name}public-subnet-3"]

  }

}

# get custom ami built by packer
data "aws_ami" "webserver" {

  owners = ["self"]
  most_recent = true

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

}

# get security groups id
# data "aws_security_groups" "sg" {

#   filter {

#     name = "tag:Name"
#     values = ["${var.sg-tag.prefix}-sg"]
#   }

# }

# create EC2 instance
resource "aws_instance" "server" {

  ami           = data.aws_ami.webserver.id # ami in us-west-2
  instance_type = var.instance

  subnet_id = data.aws_subnet.west-subnet.id 

  vpc_security_group_ids = [var.sg] # attach security group to ec2

  key_name = var.ssh-key # attach ssh key to ec2

  tags = {

    Name = "${var.ec2-tags.name}webserver"
    
  }
  
}