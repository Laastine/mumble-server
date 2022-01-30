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
  region  = var.region
}

resource "aws_key_pair" "ssh_auth" {
  key_name   = var.keypair
  public_key = file("../ssh-keys/${var.keypair}.pub")
}

resource "aws_instance" "mumble-server" {
  ami             = var.ami_id
  instance_type   = "t3.nano"
  key_name        = var.keypair
  associate_public_ip_address = true
  security_groups = [aws_security_group.ssh-mumble-security-group.id]

  tags = {
    Name = var.instance_name
  }

  subnet_id = aws_subnet.subnet_one.id
}
