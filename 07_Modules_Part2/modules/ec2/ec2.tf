resource "aws_instance" "myec2_forwebapp" {
  ami = var.ami
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  tags = {
      Name = var.ec2_name
   }
   availability_zone = var.availability_zone
}