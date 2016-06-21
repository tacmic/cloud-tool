module "vpc" {
		environment="stg"
		regionname="tky"
		region="ap-northeast-1"
		source = "./module"
		vpc_cidr = "10.66.0.0/16"
		az1="a"
		az2="c"
}