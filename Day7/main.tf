resource "aws_instance" "demo" {
  ami           = "ami-07d9160fa81ccffb5"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstEC2Instance"
  }
}