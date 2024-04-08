provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-051f8a213df8bc089"
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "MyEC2Instance"
  }
}

resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "instance_sg"
  }
}
