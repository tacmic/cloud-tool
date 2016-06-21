variable "sg_name" {}
variable "domain" {}

resource "aws_security_group" "sg" {
  name        = "${var.sg_name}"
  description = "${var.sg_name}"
  vpc_id      = "${lookup(var.vpc_id, var.domain)}"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 0
    to_port   = 0
    protocol  = -1
    self      = "true"
  }
}