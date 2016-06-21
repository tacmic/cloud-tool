variable "vpc_cidr" {}
variable "environment" {}
variable "regionname" {}

resource "aws_vpc" "vpc" {
#  cidr_block           = "${var.vpc_cidr}"
	cidr_block           = "${var.vpc_cidr}"
	enable_dns_support   = "true"
	enable_dns_hostnames = "true"

  tags {
    Name = "${var.environment}-${var.regionname}"
  }
}