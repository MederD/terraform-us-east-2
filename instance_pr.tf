resource "aws_instance" "ohio-ubuntu-pr" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.tf-ohio-private.id
  associate_public_ip_address = false 
  vpc_security_group_ids = [aws_security_group.tf-ohio-pr.id]
  
  tags = {
    Name = "ohio-ubuntu-pr"
  }  
}