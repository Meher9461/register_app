
resource "aws_subnet" "publicsubnet1" {
  vpc_id                                      = aws_vpc.myvpc.id
  cidr_block                                  = var.publicsubnet1_cidr
  enable_resource_name_dns_a_record_on_launch = "true"
  map_public_ip_on_launch                     = "true"
  count                                       = "3"

  tags = {
    Name = "publicsubnet1"
  }

}

resource "aws_subnet" "privatesubnet" {
  vpc_id                                      = aws_vpc.myvpc.id
  cidr_block                                  = var.privatesubnet_cidr
  enable_resource_name_dns_a_record_on_launch = "true"
  map_public_ip_on_launch                     = "true"
  depends_on = [
    aws_subnet.publicsubnet1
  ]
  tags = {
    Name = "privatesubnet1"
  }
}


