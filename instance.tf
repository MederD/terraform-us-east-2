provider "aws" {
  profile = "default"
  version = "~> 2.70"
  region  = "us-east-2"
}

resource "aws_instance" "ohio-ubuntu-pub" {
  ami           = "ami-0a63f96e85105c6d3"
  instance_type = "t2.micro"
  key_name      = "ubuntu_keygen"
  subnet_id     = aws_subnet.tf-ohio-public.id
  associate_public_ip_address = true  
  vpc_security_group_ids = [aws_security_group.tf-ohio-pub.id]
  
  tags = {
    Name = "ohio-ubuntu-pub"
  }  
  

  
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
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

