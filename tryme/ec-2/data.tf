data "aws_ami" "ami_aws"{
		most_recent = true
		owners      = ["amazon"]
		
		filter {
			name   = "name"
			values = ["amzn2-ami-hvm*"]
					}
}