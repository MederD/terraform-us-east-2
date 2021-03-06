variable "key_name" {}
variable "user_name" {}
variable "cidr_block" {}
variable "region" {
    default = "us-east-2"
}

variable "ami_name" {
    default = "ami-0a63f96e85105c6d3"
    type    = string
    description = "This will be defining your ami"
  }  
  
variable "instance_type" {
    default = "t2.micro"
    type    = string
    description = "This will be instance type"
  }
