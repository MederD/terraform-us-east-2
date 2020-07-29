resource "aws_route_table" "rt-ohio-pr" {
  vpc_id = aws_vpc.tf-ohio.id  
  
    tags = {
    Name = "tf-ohio-pr"
  }
  
}
