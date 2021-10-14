resource "aws_instance" "my_ec2_server" {
  instance_type = "t2.micro"
  ami = "ami-058e6df85cfc7760b"

  tags = {
      Name = "My EC2 Server"
  }

  provisioner "local-exec" {
      command = "echo ${aws_instance.my_ec2_server.private_ip} >> private_ip.txt"
  }
}

resource "aws_eip" "myeip" {
    instance = aws_instance.my_ec2_server.id
}

output "my_eip"{
    value = aws_eip.myeip.public_ip
}

resource "null_resource" "ec2-ssh-connection" {
    connection {
          host        = "${aws_eip.myeip.public_ip}"
          type        = "ssh"
          port        = 22
          user        = "ec2-user"
          private_key = "${file("./MyKeyPair.pem")}"
          timeout     = "1m"
          agent       = false
        }
    provisioner "file" {
        # cp index.html ec2-user@eip:/var/index.html
        source      = "index.html"
        destination = "/home/ec2-user/index.html"
      }
    provisioner "remote-exec" {
          inline = [
          "sudo yum update -y",
          "sudo yum install -y httpd",
          "sudo systemctl start httpd.service",
          "sudo systemctl enable httpd.service",
          "sudo cp /home/ec2-user/index.html /var/www/html/index.html",
       ]
      }
}