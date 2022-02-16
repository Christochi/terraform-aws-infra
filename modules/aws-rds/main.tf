# create db subnet group
resource "aws_db_subnet_group" "rds_subnet_group" {

  name = var.db-subnet-grp-name # name of the DB subnet group

  # list of subnets in your VPC
  subnet_ids = var.subnet-ids

  tags = {

    Name = "${var.db-subnet-tag.prefix}-subnet-group"

  }

}

# creates database instance
resource "aws_db_instance" "db" {

  count = var.create ? 1 : 0 # 1 = create, 0 = don't create

  identifier                  = var.db-identifier        # name of the RDS instance
  allocated_storage           = var.db-allocated-storage # allocated storage in gibibytes
  max_allocated_storage       = 0                        # 0 - disables storage autoscaling
  allow_major_version_upgrade = true
  apply_immediately           = true
  db_subnet_group_name        = aws_db_subnet_group.rds_subnet_group.name
  engine                      = var.db-engine      # db engine
  engine_version              = var.engine-version # db engine version to use
  instance_class              = var.db-instance    # instance type of the RDS instance
  name                        = var.db-name        # name of the database to create
  username                    = var.db-username    # username for the master DB user
  password                    = var.db-password    # password for master user
  skip_final_snapshot         = true               # do not create snaption when instance is deleted
  storage_encrypted           = true
  # vpc_security_group_ids = 

  tags = {

    Name = "${var.db-tag.name}db"

  }

}