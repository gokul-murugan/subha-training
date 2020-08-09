/*data "aws_security_group" "default" {
  id = var.security_group
}
*/

resource "aws_instance" "demo" {
  ami           = var.ami
  instance_type = var.instance_type
  #vpc_security_group_ids = ["data.aws_security_group.default.id"]
  key_name = var.keyname

  tags = {
    Name = "MyFirstEC2Instance"
  }
}
