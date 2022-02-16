output subnet-ids {

  value = aws_db_subnet_group.rds_subnet_group.subnet_ids

}

output "db-data" {

  value = {

    allocated-storage = aws_db_instance.db[*].allocated_storage
    az                = aws_db_instance.db[*].availability_zone
    endpoint          = aws_db_instance.db[*].endpoint
    engine            = aws_db_instance.db[*].engine
    engine-version    = aws_db_instance.db[*].engine_version
    instance-class    = aws_db_instance.db[*].instance_class
    name              = aws_db_instance.db[*].name
    port              = aws_db_instance.db[*].port
    status            = aws_db_instance.db[*].status
    username          = aws_db_instance.db[*].username

  }

}