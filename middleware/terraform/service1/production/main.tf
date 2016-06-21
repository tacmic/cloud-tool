variable "region" {
  default = "ap-northeast-1"
}

module "main" {
  source          = "../module"
  Environment          = "production"
  role_name       = "production-test-iam"
  sg_name         = "production-test-sg"
  ec2_name        = "${var.ec2_name}"
}

output "info" {
  value = "${module.main.info}"
}