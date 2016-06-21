variable "ec2_name" {}
variable "sdb_volume_size" {}
variable "environment" {}
variable "project" {}
variable "ami" {}
variable "cluster" {}
variable "role" {}
variable "project" {}
variable "owner" {}
variable "subnet" {}

resource "aws_instance" "instance" {
  ami                     = "${lookup(var.ami_id, var.ami)}"
  instance_type           = "${lookup(var.instance_type,var.environment)}"
  disable_api_termination = "true"
  key_name                = "default"
  vpc_security_group_ids  = ["${lookup(var.sg_id, var.role)}", "${aws_security_group.system_sg.id}"]
  subnet_id               = "${element(split(",", lookup(var.public, var.domain)), 0)}"
  iam_instance_profile    = "${aws_iam_role.system_role.name}"

  root_block_device {
    volume_type = "gp2"
    volume_size = "30"
  }

  ebs_block_device {
    device_name = "/dev/xvdb"
    volume_type = "gp2"
    volume_size = "${var.sdb_volume_size}"
  }

  tags {
  
    Name    = "${var.ec2_name}"
    Cluster = "${var.cluster}"
    Environment = "${var.environment}" 
    Role = "${var.role}" 
    Project = "${var.project}" 
    Owner = "${var.owner}" 
    Subnet = "${var.subnet}" 
  }
}

output "instance_id" {
  value = "aws_instance.instance.id"
}