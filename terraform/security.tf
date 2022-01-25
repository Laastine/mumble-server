resource "aws_security_group" "default-sec" {

  name = "allow-all-sg"

  vpc_id = aws_vpc.outer-district.id

  ingress {
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    protocol  = "tcp"
    to_port   = 22
  }

  // Remove defaults
  egress {
    from_port = 0
    protocol  = "-1"
    to_port   = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}
