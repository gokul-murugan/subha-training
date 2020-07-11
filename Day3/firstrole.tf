resource "aws_iam_role" "firstrole" {
  name = "first_role"
  path = "/devops/"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
# Attaching Inline policy from data source
resource "aws_iam_role_policy" "S3_policy" {
  name = "S3limitedPermission"
  policy = data.aws_iam_policy_document.s3.json
  role = aws_iam_role.firstrole.id #first_role
}

output "role_output" {
  value = aws_iam_role.firstrole.name
}