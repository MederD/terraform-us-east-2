resource "aws_security_group" "tf-ohio-pr" {
  name = "tf-ohio-pr"
  description = "Security Group"
  vpc_id      = aws_vpc.tf-ohio.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  ingress {
    from_port = 8
    to_port = 0
    protocol = "icmp"
    cidr_blocks = ["10.0.0.0/24"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "tf-SG-pub"
  }
}

