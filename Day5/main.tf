provider "aws" {
    version = ">= 2.0"
    region = "eu-west-1"
    assume_role {
    role_arn     = "arn:aws:iam::564763253135:role/infra-deployer"
    session_name = "SESSION_NAME"
  }
}

resource "aws_s3_bucket" "tfstate" {
    bucket = "test-gokul-terraform-tfstate"
    region = "eu-west-1"

    versioning {
    enabled = true
  }
}