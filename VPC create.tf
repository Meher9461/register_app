terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}


resource "aws_vpc" "myvpc" {

  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = "true"


  tags = {
    Name = "myVPC"
  }
}


