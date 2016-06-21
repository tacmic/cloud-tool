variable "region" {
  default = "ap-northeast-1"
}

variable "az" {
  description = "Tokyo Region Availability Zone"

  default = {
    a = "ap-northeast-1a"
    c = "ap-northeast-1c"
  }
}

variable "images" {
  description = "AMI IDs in Tokyo region"
  type        = "map"

  default = {
    amazonlinux   = "ami-6154bb00"
    windowsserver = "ami-ff435e91"
  }
}

variable "subnet" {
  description = "Subnet for ec2"
  
  default = {
    a = "subnet-05acf272"
    c = "subnet-4a94e213" 
  }
}

variable "instance_type" {
  description = "instance type"
  
  default = {
    production = "t2.micro"
    staging = "t2.micro"
  }
}

