resource "aws_subnet" "tf-ohio-public" {
  vpc_id     = aws_vpc.tf-ohio.id
  cidr_block = "10.0.0.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "tf-ohio-public"
  }
}
resource "aws_subnet" "tf-ohio-private" {
  vpc_id     = aws_vpc.tf-ohio.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = false

  tags = {
    Name = "tf-ohio-private"
  }
}

