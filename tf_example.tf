#First you gonna need to create user in aws using IAM , and then create creditionals file with the secret password and key.

provider "aws" {
  profile = "default"
  region = "us-west-2"
}

resource "aws_s3_bucket" "prod_tf_course" {
  bucket = "tf-course-2022-05-10"
  acl    = "private"
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "prod_web" {
  name        = "prod_web"
  description = "Allow standard http and https ports inbound and everything outbound"
  
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks ["0.0.0.0/0"]
  }
  
  tags = {
    "Terraform" : "true"
  }
}
  

'''
Terraform commands :
terraform plan
terraform apply 
terraform
'''
  
