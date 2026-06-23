provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
bucket = "my-githubactions-demo-bucket"
}

resource "aws_instance" "my_server" {
  ami           = "ami-0bc7aabcf58d1e02a" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
