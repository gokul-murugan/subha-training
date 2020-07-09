resource "aws_iam_group" "firstgroup"{
    name = "group-1"
}

resource "aws_iam_group" "firstpathgroup"{
    name = "pathgroup"
    path = "/testing/"
}