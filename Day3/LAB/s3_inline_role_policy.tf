data "aws_iam_policy_document" "s3" {
  statement {
    sid = "s3Full"

    actions = [
      "s3:*",
    ]

    resources = [
      "*",
    ]
  }
}

resource "aws_iam_role_policy" "S3_policy" {
  name = "S3FullPermission"
  policy = data.aws_iam_policy_document.s3.json
  role = aws_iam_role.labrole.id 
}