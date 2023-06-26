resource "random_id" "suffix" {
  count = 3
  byte_length = 5
}

resource "aws_instance" "instance-1" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.custom-vpc-public-subnet.id
  vpc_security_group_ids = [aws_security_group.custom-vpc-security-group.id]
  key_name      = var.key_name
  availability_zone = "us-east-1a"
  tags = {
    Name = "Test-VM-${random_id.suffix[count.index].hex}"
  }
}

resource "aws_instance" "instance-2" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.custom-vpc-public-subnet.id
  vpc_security_group_ids = [aws_security_group.custom-vpc-security-group.id]
  key_name      = var.key_name
  availability_zone = "us-east-1a"
  tags = {
    Name = "Test-VM-${random_id.suffix[count.index].hex}"
  }
}

resource "aws_instance" "instance-3" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.custom-vpc-private-subnet.id
  key_name      = var.key_name
  availability_zone = "us-east-1a"
  tags = {
    Name = "Test-VM-${random_id.suffix[count.index].hex}"
  }
}