resource "aws_route_table_association" "route_assoc_pub" {
  subnet_id      = aws_subnet.tf-ohio-public.id
  route_table_id = aws_route_table.rt-ohio-pub.id
}

