resource "aws_instance" "myec2" {
  ami               = "ami-0df435f331839b2d6"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  # availability_zone = "us-east-1b"

  tags = {
    Name = "Linux2023"
  }

  lifecycle {
    ignore_changes = [ tags ]
  }
}