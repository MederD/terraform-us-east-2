provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = var.region
}

resource "aws_instance" "ohio-ubuntu-pub" {
  ami           = var.ami_name
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = aws_subnet.tf-ohio-public.id
  associate_public_ip_address = true  
  vpc_security_group_ids = [aws_security_group.tf-ohio-pub.id]
  
  tags = {
    Name = "ohio-ubuntu-pub"
  }  
  

  
  connection {
    type = "ssh"
    user = var.user_name
    private_key = var.private_key_path
    host = self.public_ip
 }

  provisioner "remote-exec" {
     inline = [
        "sudo apt update",
        "sudo apt install -y apache2"
        
   ]
 } 
 }
 output "instance_ip_addr" {
  value       = aws_instance.ohio-ubuntu-pub.private_ip
  description = "The private IP address of the main server instance."
}

