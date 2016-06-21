variable "az2" {}
variable "region" {}
variable "regionname" {}
variable "environment" {}

resource "aws_subnet" "private_subnet2" {
  vpc_id            = "${aws_vpc.vpc.id}"
  cidr_block        = "${cidrsubnet(aws_vpc.vpc.cidr_block, 3, 3)}"
  availability_zone = "${var.region}${var.az1}"

  tags {
    Name = "${var.environment}-${var.regionname}-private-${var.az2}"
  }
}