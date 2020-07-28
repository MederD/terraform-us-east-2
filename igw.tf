resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.tf-ohio.id

  tags = {
    Name = "tf-ohio"
  }
}