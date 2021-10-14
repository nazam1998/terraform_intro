resource "aws_instance" "MyEC2"{
    count = length(var.availability_zone)
    ami = var.ami
    instance_type = var.instance_type
    availability_zone = element(var.availability_zone, count.index)

    tags = { 
        Name = "My EC2 ${element(var.availability_zone, count.index)}"
    }
}

output "myec2" {
  value = aws_instance.MyEC2
}