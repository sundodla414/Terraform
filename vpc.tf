provider "aws" {
   profile = "default"
   region  = "us-east-1"
}

resource "aws_vpc" "custom-vpc-terraform" {
	cidr_block            = var.cidr
	tags = {
		name = var.tags
	}
}