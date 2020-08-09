resource "aws_ebs_volume" "firstebs" {
  availability_zone = "eu-west-1a"
  size              = 1

  tags = {
    Name = "FirstVolume"
  }
}

# Volume Attachment
resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.firstebs.id
  instance_id = aws_instance.demo.id
}