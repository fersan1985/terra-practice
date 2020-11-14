provider "aws" {
    region = "us-east-1"
    assume_role {
        role_arn     = "arn:aws:iam::839056131293:role/fersan1985"
        session_name = "fersan1985"
    }
}