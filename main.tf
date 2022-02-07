provider "aws" {
  
    access_key = "AKIA267Q5SRMRLT33AF4"
    secret_key = "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"
    region     = "us-east-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0dba2cb6798deb6d8"
  instance_type = "t2.micro"

  tags = {
    Name = "secnd"
  }
}



