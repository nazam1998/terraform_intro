module "my_ec2" {
  source = "../modules"
  instance_type = "t2.micro"
  ec2_name = "my_prod_EC2"
}