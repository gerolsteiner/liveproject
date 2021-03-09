terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "2.65.0"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "liveproject"
}
 
resource "aws_instance" "helloworld" {
  ami           = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
