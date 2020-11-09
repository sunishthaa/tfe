terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Sunishthaa_org"
    workspaces { 
      prefix = "aws-" 
    } 
  }
}

provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}
