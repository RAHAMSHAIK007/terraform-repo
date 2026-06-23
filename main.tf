provider "aws" {
region = "us-east-1"
}

resource "aws_s3_bucket" "demo" {
bucket = "my-githubactions-demo-bucket"
}

resource "aws_instance" "my_server" {
  ami           = "ami-08f44e8eca9095668" 
  instance_type = "t3.micro"             

  tags = {
    Name = "Terraform-Managed-EC2"
  }
}
