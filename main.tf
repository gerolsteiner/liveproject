terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  profile = "liveproject"
  region  = "us-east-1"
}

resource "aws_instance" "helloworld" {
  ami           = data.aws_ami.aws_linux.id
  instance_type = "t2.micro"
  tags = {
    Name = "HelloWorld"
  }
}
