resource "aws_instance" "prueba1"{
    ami             = data.aws_ami.ami_aws.id
    instance_type   = var.instance_type
    security_groups = [var.sg_tryme] 
    key_name        = "terraform"
    tags            = {
        Name = "Remote1"
    }
    provisioner "remote-exec"{
        inline = [
            "sudo amazon-linux-extras install -y nginx1.12",
            "sudo systemctl start nginx"
        ]
    connection {
        type        = "ssh"
        user        = "ec2-user"
        private_key = file("./terraform.pem")
        host        = self.public_ip
    }

    }
    }

output "Public_IP"{
    value = aws_instance.prueba1.public_ip
}