# Create a user

resource "aws_iam_user" "firstuser" {
  name = var.user1
}