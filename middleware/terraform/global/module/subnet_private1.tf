variable "az1" {}
variable "region" {}
variable "regionname" {}
variable "environment" {}

resource "aws_subnet" "private_subnet1" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${cidrsubnet(aws_vpc.vpc.cidr_block, 3, 2)}"
  availability_zone = "${var.region}${var.az1}"

  tags {
    Name = "${var.environment}-${var.regionname}-private-${var.az1}"
  }
}