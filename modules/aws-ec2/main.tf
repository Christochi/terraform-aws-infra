# find and fetch subnet id using the tag name of the subnet
data "aws_subnet" "west_subnet" {

  filter {

    name   = "tag:Name"
    values = ["${var.ec2-tags.name}public-subnet-3"]

  }

}

# get custom ami built by packer using regex value, ebs and hvm
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

# get security groups id using the tag name of the sg
data "aws_security_groups" "sg" {

  filter {

    name   = "tag:Name"
    values = ["${var.sg-tag.prefix}-sg"]

  }

}

# create EC2 instance
resource "aws_instance" "server" {

  # 1 = true/create, 0 = false/don't create
  count = var.create ? 1 : 0

  ami           = data.aws_ami.webserver.id
  instance_type = var.instance

  subnet_id = data.aws_subnet.west_subnet.id

  # attach security group to ec2
  # join() produces a string from a list of strings separated by a delimiter
  vpc_security_group_ids = [join(", ", data.aws_security_groups.sg.ids)]

  key_name = var.ssh-key # attach ssh key to ec2

  # cloud init script
  user_data = data.template_cloudinit_config.config.rendered

  tags = {

    Name = "${var.ec2-tags.name}webserver"

  }

}