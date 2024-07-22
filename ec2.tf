resource "aws_instance" "main" {
  ami           = "ami-0649bea3443ede307"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_http.id]
  subnet_id = aws_subnet.public.id
  key_name               = "universal-key"
}
