data "aws_iam_policy_document" "s3" {
  statement {
    sid = "S3Permissions"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }
}