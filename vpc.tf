resource "aws_vpc" "tf-ohio" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "tf-ohio"
  }
  


}