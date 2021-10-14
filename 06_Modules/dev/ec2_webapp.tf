module "my_ec2" {
  source = "../modules"
  instance_type = "t2.micro"
  ec2_name = "my_dev_EC2"
}