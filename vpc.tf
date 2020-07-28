resource "aws_vpc" "tf-ohio" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "tf-ohio"
  }
  


}