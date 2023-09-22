terraform {
 required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~>5.16.2"
    }
  }
}

provider "aws" {
  region ="us-east-1"
}

resources "aws_instance" "example" {
    ami        = "ami-024e6efaf93d85776" # ubuntu 20.04 LTS // us-east-1
    instance_type = "t2.micro"
}