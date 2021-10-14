
resource "aws_instance" "my_first_instance" {
    instance_type = "t2.micro"
    ami = "ami-058e6df85cfc7760b"
    tags = {
        Name = "My Terraform Instance"
    }

    key_name = "MyKeyPair"
    
    user_data = <<-EOF
                   #!/bin/bash
                   yum update -y
                   yum install -y httpd
                   systemctl start httpd.service
                   systemctl enable httpd.service
                   echo "Hello world from $(hostname -f) ! I am hosted from Terraform in AWS !" > /var/www/html/index.html
                   EOF 
}
