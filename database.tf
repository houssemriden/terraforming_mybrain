resource "aws_db_instance" "db_mysql" {

  insance_class="db.t3.micro"
  db_name="mysql_rds_db"
  engine_version="5.7"
  
}
