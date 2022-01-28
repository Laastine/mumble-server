resource "aws_internet_gateway" "outer-district-internet-gw" {
  vpc_id = aws_vpc.outer-district.id
  tags = {
    Name = "default-gw"
  }
}

resource "aws_route_table" "route-table-default-env" {
  vpc_id = aws_vpc.outer-district.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.outer-district-internet-gw.id
  }

  tags = {
    Name = "default-env-route-table"
  }
}

resource "aws_route_table_association" "subnet-association" {
  subnet_id      = aws_subnet.subnet_one.id
  route_table_id = aws_route_table.route-table-default-env.id
}

resource "aws_subnet" "subnet_one" {
  cidr_block        = cidrsubnet(aws_vpc.outer-district.cidr_block, 3, 1)
  vpc_id            = aws_vpc.outer-district.id
  availability_zone = var.region_az
}
