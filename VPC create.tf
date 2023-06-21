terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}


resource "aws_vpc" "myvpc" {

  cidr_block           = "10.3.0.0/16"
  enable_dns_hostnames = "true"


  tags = {
    Name = "myVPC"
  }
}


