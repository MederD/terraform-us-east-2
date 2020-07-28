resource "aws_route_table" "rt-ohio-pub" {
  vpc_id = aws_vpc.tf-ohio.id  
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
    tags = {
    Name = "tf-ohio-pub"
  }
  
}
