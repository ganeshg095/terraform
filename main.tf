/*
data "aws_vpc" "vpc1" {
    id = "vpc-0122b148a3134317b"
}
resource "aws_subnet" "subnet1" {
    vpc_id = data.aws_vpc.vpc1.id
    cidr_block  = "10.0.0.0/24"
    tags = {
        Name = "ganesh-vpc"
    }
}

resource "aws_instance" "ganesh_instance1" {
    ami = "ami-08a52ddb321b32a8c"
    instance_type = "t3.micro"
    tags = {
        Name = "Ganesh-01"
    }
}

data "aws_network_interface" "network2" {
    id = "eni-07ace48693799901e"
}

resource "aws_network_interface_attachment" "test" {
  instance_id          = aws_instance.ganesh_instance1.id
  network_interface_id = data.aws_network_interface.network2.id
  device_index         = 1
}
*/
/*
resource "aws_iam_user" "ganesh" {
  name = "Ganesh"
  tags = {
    Name = "Ganesh"
  }
provisioner "local-exec" {
   # command = "echo ${aws_iam_user.ganesh.name} >> users.txt"
   command = "echo ${aws_iam_user.ganesh.arn} >> secrets.txt"
  }
}

resource "aws_iam_access_key" "ganesh" {
  user = aws_iam_user.ganesh.name

}
resource "aws_iam_user" "aravind" {
  name = "Aravind"
  tags = {
    Name = "Aravind"
  }

}

resource "aws_iam_access_key" "aravind" {
  user = aws_iam_user.aravind.name

}

resource "null_resource" "example1" {
  triggers = {
    timestamp = timestamp()
  }

  provisioner "local-exec" {
   # command = "echo ${aws_iam_user.ganesh.name} >> users.txt"
   command = "echo Secret key ${aws_iam_access_key.ganesh.secret}, echo Access key ${aws_iam_access_key.ganesh.id} >> secrets_ganesh.txt"
}
}
*/
/*
resource "aws_instance" "ganesh" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "ganesh-pem"

provisioner "remote-exec" {
    inline = [
        "sudo apt-update -y",
        "sudo apt install nginx -y",
        "sudo systemctl enable nginx",
        "sudo systemctl start nginx",
        "sudo apt install apache2 -y",
        "sudo systemctl enable apache2",
        "sudo systemctl status apache2"
    ]
}
connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("./ganesh-pem.pem")
    host = self.public_ip
}
tags = {
    name = "ganesh-instance01"
}
}
*/
/*
import {
    to = aws_instance.instance2
    id = "i-03ee9dc2f13da0264"
    }
*/
/*
module "web_server_sg" {
  source = "terraform-aws-modules/security-group/aws//modules/http-80"

  name        = "web-server-ganesh"
  description = "webserver sg"
  vpc_id      = "vpc-0122b148a3134317b"

  ingress_cidr_blocks = ["10.10.0.0/16"]
}
*/
