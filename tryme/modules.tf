module "ec2"{
    source = "./ec-2"
    instance_type   = "t2.micro"
    sg_tryme        = module.remote_sg.sg_tryme_out
}

module "remote_sg"{
    source = "./sg-group"
    dynamic_ingress = ["22","80"]
    my_IP           = "181.164.158.27/32"
}




