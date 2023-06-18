
resource "aws_subnet" "subnet1" {
  vpc_id                                      = aws_vpc.myvpc.id
  cidr_block                                  = "10.3.1.0/24"
  enable_resource_name_dns_a_record_on_launch = "true"
  map_public_ip_on_launch                     = "true"
  tags = {
    Name = "subnet1"
  }

}

