resource "aws_instance" "my_ec2" {
  ami           = "i-04ebd3c234e84cfae"
  instance_type = "t2.micro"
  key_name      = "mykey"
  subnet_id     = aws_subnet.publicsubnet1.id

  

  tags = {
    Name = "my_ec2"
  }
}
