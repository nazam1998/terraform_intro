variable "ami" {
  default = "ami-058e6df85cfc7760b"
}
variable "instance_type" {
  default = {
    default = "t2.micro"
    prod = "t2.micro"
    dev = "t2.micro"}
}
variable "ec2_name" {
  default = {
      default = ""
      prod = "Prod WorkSpace Demo"
      dev = "Dev WorkSpace Demo"
  }
}
variable "availability_zone" {
  default = "eu-central-1a"
}