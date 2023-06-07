resource "aws_instance" "appsilon-task" {
  ami           = "ami-0f8e81a3da6e2510a"  # Ubuntu 22.04 LTS
  instance_type = "t2.micro"

  tags = {
    Name = "Ubuntu EC2 Instance"
  }
  key_name               = "appsilon-key"
  vpc_security_group_ids = ["sg-068f9f3a590c31fae"]

  }
