provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
bucket = "my-githubactions-bucket-oo99"
}


resource "aws_instance" "my_server" {
  ami           = "ami-081b0a6eac00b4f53" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
