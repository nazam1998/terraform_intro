
resource "aws_instance" "my_first_instance" {
    instance_type = lookup(var.instance_type, terraform.workspace)
    ami = var.ami
    tags = {
        Name = lookup(var.ec2_name, terraform.workspace)
    }
    
    availability_zone =  ""
    user_data = <<-EOF
                   #!/bin/bash
                   yum update -y
                   yum install -y httpd
                   systemctl start httpd.service
                   systemctl enable httpd.service
                   echo "Hello world from $(hostname -f) ! I am hosted from Terraform in AWS !" > /var/www/html/index.html
                   EOF 
}

