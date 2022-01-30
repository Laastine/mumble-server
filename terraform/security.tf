resource "aws_security_group" "ssh-mumble-security-group" {

  name = "allow-ssh-mumble-sg"

  vpc_id = aws_vpc.outer-district.id


  // Remove defaults
  egress {
    from_port   = 0
    protocol    = "-1"
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group_rule" "ingress_rules" {
  for_each          = var.sg_ingress_rules
  type              = "ingress"
  from_port         = each.value.from_port
  to_port           = each.value.to_port
  protocol          = each.value.protocol
  cidr_blocks       = each.value.cidr_block
  description       = each.value.description
  security_group_id = aws_security_group.ssh-mumble-security-group.id
}
