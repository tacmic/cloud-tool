resource "aws_route_table" "public1_route_table" {
  vpc_id = "${aws_vpc.vpc.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.igw_id}"
  }
}