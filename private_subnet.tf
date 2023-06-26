resource "aws_subnet" "custom-vpc-private-subnet" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = false
  cidr_block  = var.private_subnet
  availability_zone = "us-east-1a"

  tags = {
    Name = var.private_subnet_tags
  }
}