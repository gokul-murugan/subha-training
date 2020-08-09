
output "ec2" {
  value = aws_instance.demo.id
}

/*
output "sg"{
    value = data.aws_security_group.default.id
}
*/