resource "aws_db_subnet_group" "database_subnet_group" {
name = "database-subnets"
subnet_ids = [aws_subnet.private_data_subnet_az1.id, aws_subnet.private_data_subnet_az2.id]
description = "subnets for database instance"

tags = {
Name = "database-subnets"
}
}

# create the rds instance
resource "aws_db_instance" "db_instance" {
engine = "mysql"
engine_version = "8.0.31"
multi_az = false
identifier = "dev-rds-instance"
username = "admin"
password = "Gx675313*"
instance_class = "db.t2.micro"
allocated_storage = 200
db_subnet_group_name = aws_db_subnet_group.database_subnet_group.name
vpc_security_group_ids = [aws_security_group.database_security_group.id]
availability_zone = "us-east-1b"
db_name = "applicationdb"
final_snapshot_identifier = "dev-rds-database"
skip_final_snapshot       = true

}