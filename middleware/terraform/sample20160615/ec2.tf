resource "aws_instance" "test-instance" {
  ami = "${lookup(var.images,"amazonlinux")}"
  instance_type = "${lookup(var.instance_type, "staging")}"
}
