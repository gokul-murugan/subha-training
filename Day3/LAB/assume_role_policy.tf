data "aws_iam_policy_document" "assume_role" {
  statement {
    sid = "AssumeRole"

    actions = [
      "sts:AssumeRole",
    ]

    resources = [
      "arn:aws:iam::564763253135:role/devops/first_role",
    ]
  }
}