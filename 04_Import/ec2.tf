resource "aws_instance" "my_ec2_instance_terraform"{
    ami = "ami-058e6df85cfc7760b"
    instance_type = "t2.micro"
    tags = { 
        Name = "my_ec2_instance_terraform"
    }
}

resource "aws_instance" "my_ec2_instance_import"{
    ami = "ami-058e6df85cfc7760b"
    instance_type = "t2.micro"
    tags = { 
        Name = "Imported Instance"
    }
}