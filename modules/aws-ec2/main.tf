# fetch subnet id
data "aws_subnet" "west_subnet" {

  filter {

    name   = "tag:Name"
    values = ["${var.ec2-tags.name}public-subnet-3"]

  }

}

# get custom ami built by packer
data "aws_ami" "webserver" {

  owners      = ["self"]
  most_recent = true
  name_regex  = var.regex # "string to aid in filtering"

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
data "aws_security_groups" "sg" {

  filter {

    name   = "tag:Name"
    values = ["${var.sg-tag.prefix}-sg"]

  }

}

# create EC2 instance
resource "aws_instance" "server" {

  count = var.create ? 1 : 0

  ami           = data.aws_ami.webserver.id # ami in us-west-2
  instance_type = var.instance

  subnet_id = data.aws_subnet.west_subnet.id

  # attach security group to ec2
  # join() produces a string from a list of strings separated by a delimiter
  vpc_security_group_ids = [join(", ", data.aws_security_groups.sg.ids)]

  key_name = var.ssh-key # attach ssh key to ec2

  user_data = data.template_cloudinit_config.config.rendered

  tags = {

    Name = "${var.ec2-tags.name}webserver"

  }

}