output subnet-ids {

  value = aws_db_subnet_group.rds_subnet_group.subnet_ids 

}

output "db-data" {

  value = {

    allocated-storage = join( "", aws_db_instance.db[*].allocated_storage )
    az                = join( "", aws_db_instance.db[*].availability_zone )
    endpoint          = join( "", aws_db_instance.db[*].endpoint )
    engine            = join( "", aws_db_instance.db[*].engine )
    engine-version    = join( "", aws_db_instance.db[*].engine_version )
    instance-class    = join( "", aws_db_instance.db[*].instance_class )
    name              = join( "", aws_db_instance.db[*].name )
    port              = join( "", aws_db_instance.db[*].port )
    status            = join( "", aws_db_instance.db.*.status )
    username          = join( "", aws_db_instance.db.*.username )

  }

}