resource "aws_subnet" "custom-vpc-public-subnet" {
  vpc_id      = aws_vpc.custom-vpc-terraform.id
  map_public_ip_on_launch = true
  cidr_block  = var.public_subnet
  availability_zone = "us-east-1a"
  tags = {
    Name = var.public_subnet_tags
  }
}