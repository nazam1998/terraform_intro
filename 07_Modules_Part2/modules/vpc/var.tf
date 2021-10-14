variable "cidr_vpc" {
  default= "192.168.0.0/16"
}

variable "instance_tenancy"{
    default= "dedicated"
}

variable "vpc_id" {
    default= {}
}

variable "cidr_subnet" {
    default= "192.168.1.0/16"
}

variable "az" {
    default= "eu-central-1a"
}