
resource "aws_iam_user" "labuser" {
  name = var.user_name
}

resource "aws_iam_group" "labgroup" {
  name = var.group_name
}

resource "aws_iam_group_policy" "group_policy" {
  group = aws_iam_group.labgroup.id
  policy = data.aws_iam_policy_document.assume_role.json
}

resource "aws_iam_group_membership" "lab" {
  name = var.group_membership
  users = [aws_iam_user.labuser.name]
  group= aws_iam_group.labgroup.id
}

resource "aws_iam_role" "labrole" {
  name = var.role_name
  path = var.path_name

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


