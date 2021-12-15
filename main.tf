terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}
provider "aws" {
  region = "us-east-2"
}
module "TERRAFORMNEW-vpc"  {
  source = "./modules/vpc"
vpccidr = "10.120.0.0/16"
Publiccidr = ["10.120.1.0/24", "10.120.2.0/24", "10.120.3.0/24"]
azs = ["us-east-2a", "us-east-2b", "us-east-2c"]
Privatecidr = ["10.120.10.0/24", "10.120.20.0/24", "10.120.30.0/24"]
}

# module "TERRAFORMNEW-ec2" {
#     source = "./modules/ec2"
# amiid = "ami-02af65b2d1ebdfafc"
# instancesize = "t2.micro"
# PublicSubnet = "${module.TERRAFORMNEW-vpc.all_Public_Subnet}"
# enable_public_ip = "true"
# sg = "${module.TERRAFORMNEW-vpc.sg.id}"
# }
