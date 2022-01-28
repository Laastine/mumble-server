resource "aws_vpc" "outer-district" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "default-env"
  }
}

resource "aws_eip" "default-ip" {
  instance = aws_instance.mumble-server.id
  vpc      = true
}
