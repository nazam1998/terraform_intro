variable "ami" {
  default = "ami-058e6df85cfc7760b"
}
variable "instance_type" {
  default = "t2.micro"
}

variable "availability_zone" {
  type = list
  default = ["eu-central-1a", "eu-central-1b","eu-central-1c"]
}