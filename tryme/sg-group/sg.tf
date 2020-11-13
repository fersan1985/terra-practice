resource "aws_security_group" "remote_sg"{
    name        = "remote_sg"
    description = "SG para remote-exec"
    tags        = {
            Name = "remote_sg"
    }

    dynamic "ingress"{
        for_each = var.dynamic_ingress

        content{
            from_port   = ingress.value
            to_port     = ingress.value
            protocol    = "TCP"
            cidr_blocks = [var.my_IP]
        }
    }
    egress {
        from_port = 0
        to_port   = 0
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

}

output "sg_tryme_out"{
    value = aws_security_group.remote_sg.name
}