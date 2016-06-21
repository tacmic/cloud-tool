# VPC IDs
variable "vpc_id" {
  description = "vpc id in ap-northeast-1"
  type        = "map"
  default = {
    production  = "vpc-937babf4"
    staging     = "vpc-957babf2"
    management  = "vpc-967babf1"
  }
}

variable "ami_id" {
  description = "ami id in ap-northeast-1"
  type = "map"
  default = {
    linux = "ami-6154bb00"
    rhel = "ami-0dd8f963"
    suse = "ami-f8220896"
    ubuntu = "ami-a21529cc"
  }
}

variable "instance_type" {
  description = "instance type for environment"
  type = "map"
  default = {
    production = "t2.micro"
    staging = "t2.micro"
    management = "t2.micro"
  }
}

variable "sg_id" {
  description = "sg_id for role"
  type = "map"
  default = {
    web = "t2.micro"
    db = "t2.micro"
    elasticsearch = "t2.micro"
  }
}
