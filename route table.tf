resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.id
  }
  tags = {
    Name = "public_route"
  }
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.myvpc.id

  tags = {
    Name = "private_route"
  }
}

resource "aws_route_table_association" "publicasso" {
  subnet_id      = aws_subnet.publicsubnet1.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_route_table_association" "privateasso" {
  subnet_id      = aws_subnet.privatesubnet.id
  route_table_id = aws_route_table.private_route.id
}

resource "aws_security_group" "mysg" {
  name        = "mysg"
  description = "allow all traffic"
  vpc_id      = aws_vpc.myvpc.id
}

ingress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]

}

egress {
  from_port   = 0
  to_port     = 0
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]




}
