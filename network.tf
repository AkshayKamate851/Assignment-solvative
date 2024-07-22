resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  cidr_block = "10.0.1.0/24"
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-west-2a"
}

resource "aws_subnet" "private" {
  cidr_block = "10.0.2.0/24"
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-west-2b"
}
resource "aws_subnet" "database_subnet_us_east_2a" {
  cidr_block = "10.0.3.0/24"
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-east-2a"
}

resource "aws_subnet" "database_subnet_us_east_2b" {
  cidr_block = "10.0.4.0/24"
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-east-2b"
}

resource "aws_subnet" "database_subnet_us_east_2c" {
  cidr_block = "10.0.5.0/24"
  vpc_id     = aws_vpc.main.id
  availability_zone = "us-east-2c"
}
resource "aws_security_group" "allow_http" {
  name        = "allow_http"
  description = "Allow HTTP traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
