resource "aws_eip" "lb" {
  instance = aws_instance.my_first_instance.id
  vpc      = true
}

output "my_eip"{
    value = aws_eip.lb.public_ip
}