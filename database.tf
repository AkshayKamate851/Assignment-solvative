resource "aws_db_instance" "main" {
  identifier = "media-streaming-db"
  engine      = "mysql"
  instance_class = "db.m5d.large"
  allocated_storage = 105
  db_name  = "media_streaming"
  username = "root"
  password = "123456789"
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  db_subnet_group_name = aws_db_subnet_group.main.name
}

resource "aws_db_subnet_group" "main" {
  name        = "media-streaming-db-subnet-group"
  subnet_ids = resource "aws_db_subnet_group" "main" {
  name        = "media-streaming-db-subnet-group"
  description = "Media Streaming DB Subnet Group"
  subnet_ids = [
    aws_subnet.database_subnet_us_east_2a.id,
    aws_subnet.database_subnet_us_east_2b.id,
    aws_subnet.database_subnet_us_east_2c.id
  ]
}
}
