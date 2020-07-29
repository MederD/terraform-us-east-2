resource "aws_instance" "ohio-ubuntu-pr" {
  ami           = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"
  key_name      = "ubuntu_keygen"
  subnet_id     = aws_subnet.tf-ohio-private.id
  associate_public_ip_address = false 
  vpc_security_group_ids = [aws_security_group.tf-ohio-pr.id]
  
  tags = {
    Name = "ohio-ubuntu-pr"
  }  
}