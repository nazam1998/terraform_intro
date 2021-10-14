resource "aws_vpc" "my_vpc" {
  cidr_block = var.cidr_vpc
  instance_tenancy = var.instance_tenancy
  tags = {
    Name = "My Custom VPC"
  }
}

resource "aws_subnet" "my_subnet" {
    vpc_id = var.vpc_id
    cidr_block = var.cidr_subnet

    tags = {
        Name = "Subnet Module Demo"
    }

    availability_zone = var.az
    depends_on = [aws_vpc.my_vpc]
}

output "vpc_id" {
    value = aws_vpc.my_vpc.id
}
output "subnet_id" {
    value = aws_subnet.my_subnet.id
}