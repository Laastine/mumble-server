terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0b79d00e41ebf0a9b"
  instance_type = "t3.micro"

  tags = {
    Name = var.instance_name
  }
}
