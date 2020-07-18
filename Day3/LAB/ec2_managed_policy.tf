data "aws_iam_policy_document" "ec2" {
  statement {
    sid = "EC2Full"

    actions = [
      "ec2:*",
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_policy" "ec2policy" {
  name = "EC2-Full"
  policy = data.aws_iam_policy_document.ec2.json
}

resource "aws_iam_role_policy_attachment" "roleattach" {
  role = aws_iam_role.labrole.id
  policy_arn = aws_iam_policy.ec2policy.arn
}
