variable "cidr" {
	description = "Specify the cidr block that will be used to create the custom vpc."
	type        = string
	default     = "10.0.0.0/16"
}

variable "tags" {
  description = "Specify the tags for the custom vpc."
  type        = string
  default     = "custom-vpc-terraform"
}

variable "public_subnet" {
  description = "Specify the cidr block for the public subnet one."
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_tags" {
  description = "Specify the tags for public subnet one."
  type        = string
  default     = "public_subnet"
}

variable "private_subnet" {
  description = "Specify the cidr block for the private subnet one."
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet_tags" {
  description = "Specify the tags for private subnet one."
  type        = string
  default     = "private_subnet"
}

variable "custom-vpc-IGW" {
  description = "Specify the name of the custom IGW to be created."
  type        = string
  default     = "Custom-VPC-IGW"
}

variable "public_route_table" {
  description = "Specify the name of the public route table."
  type        = string
  default     = "Custom-vpc-public-route-table"
}

variable "private_route_table" {
  description = "Specify the name of the private route table."
  type        = string
  default     = "Custom-vpc-private-route-table"
}

variable "region" {
  description = "Specify the region for the resources."
  type        = string
  default     = "us-east-1"
}

variable "ami_id" {
  description = "Specify the instance ami that you want to use for the instance."
  type        = map
  default     = {
     "us-east-1" = "ami-0b898040803850657"
  }
}

variable "ec2_tags_1" {
  description = "Specify the tafs for the EC2 instance."
  type        = string
  default     = "EC2_instance_1"
}

variable "ec2_tags_2" {
  description = "Specify the tafs for the EC2 instance."
  type        = string
  default     = "EC2_instance_2"
}

variable "ec2_tags_3" {
  description = "Specify the tafs for the EC2 instance."
  type        = string
  default     = "EC2_instance_3"
}

variable "instance_type" {
  description = "Specify the instance type to be used for the instance."
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "Specify the key pair to be used for the instance."
  type        = string
  default     = "new_key"
}
