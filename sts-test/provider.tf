provider "aws" {
    region = "us-east-1"
    assume_role {
        role_arn     = "arn:aws:iam::accounthere:role/fersan1985"
        session_name = "fersan1985"
    }
}
