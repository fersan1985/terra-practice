provider "aws"{
    region = "us-east-1"
}

provider "aws"{
    alias  = "London"
    region = "eu-west-2"
}