resource "aws_instance" "my_ec2" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "mykey"
  count = 3
  subnet_id     = aws_subnet.publicsubnet1[count.index].id
  



  tags = {
    Name = "my_ec2"
  }
}
