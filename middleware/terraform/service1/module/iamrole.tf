variable "role_name" {}

resource "aws_iam_role" "iamrole" {
  name = "${var.role_name}"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

resource "aws_iam_instance_profile" "iamrole_profile" {
  name  = "${aws_iam_role.iamrole.name}"
  roles = ["${aws_iam_role.iamrole.name}"]
}