
resource "aws_subnet" "publicsubnet1" {
  count                                       = 3
  vpc_id                                      = aws_vpc.myvpc.id
  availability_zone                           = element(var.az, count.index)
  cidr_block                                  = element(var.cidr, count.index)
  enable_resource_name_dns_a_record_on_launch = "true"
  map_public_ip_on_launch                     = "true"


  tags = {
    Name = "publicsubnet1-${count.index}"
  }

}

#resource "aws_subnet" "privatesubnet" {
#  vpc_id                                      = aws_vpc.myvpc.id
#  cidr_block                                  = var.privatesubnet_cidr
#  enable_resource_name_dns_a_record_on_launch = "true"
#  map_public_ip_on_launch                     = "true"
#  depends_on = [
#    aws_subnet.publicsubnet1
#  ]
#  tags = {
#    Name = "privatesubnet1"
#  }
#}


