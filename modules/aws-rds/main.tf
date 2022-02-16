# fetch subnet ids
data "aws_subnets" "west_subnet" {

  filter {

    name   = "tag:Name"
    values = ["${var.ec2-tags.name}public-subnet*"]

  }

}

# create db subnet group
resource "aws_db_subnet_group" "rds_subnet_group" {

  name       = "tochi-rds-subnet-group"
  subnet_ids = data.aws_subnets.west_subnet.ids

  tags = {

    Name = "tochi-rds-subnet-group"

  }

}

# creates database instance
resource "aws_db_instance" "default" {

  identifier                  = "tochi-rds"
  allocated_storage           = 10
  max_allocated_storage       = 0 # 0 - disables autoscaling
  allow_major_version_upgrade = true
  apply_immediately           = true
  db_subnet_group_name        = aws_db_subnet_group.rds_subnet_group.name
  engine                      = "mariadb"
  engine_version              = "10.6.5"
  instance_class              = "db.t3.micro"
  # name
  username                    = "intern"
  password                    = "Pass.123"
  publicly_accessible         = false
  skip_final_snapshot         = true
  storage_encrypted           = true
  # vpc_security_group_ids = 
  # port
  #  tags 

}

