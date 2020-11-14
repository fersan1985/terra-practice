resource "aws_instance" "Virginia"{
        ami           = "ami-0947d2ba12ee1ff75"
        instance_type = "t2.micro"
        tags          = {
            Name = "Virginia Server"
        }
}       

resource "aws_instance" "London"{
        ami           = "ami-0a669382ea0feb73a"
        instance_type = "t2.micro"
        tags          = {
            Name = "London Server"
        }
        provider = aws.London
} 