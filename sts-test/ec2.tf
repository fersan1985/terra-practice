resource "aws_instance" "sts-test"{
    ami = "ami-0947d2ba12ee1ff75"
    instance_type = "t2.micro" 
    subnet_id = "subnet-0609fca377eff24c1"
    tags ={
        Name = "Test Terraform STS"
    }
}