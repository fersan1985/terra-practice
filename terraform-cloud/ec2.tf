resource "aws_instance" "TerraCloud"{
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro"
    tags = {
        Name = "TerraCloud"
    }
}