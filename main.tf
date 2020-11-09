terraform {
  backend "s3" {
    bucket = "mybackendtest"
    key    = "terraform.tfstate"
    region = "us-east-1"
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


output "address" {
  value       = "myaddresss"
  description = "testing address output variable"
}
