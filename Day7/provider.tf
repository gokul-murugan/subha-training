provider "aws" {
    version = ">= 2.0"
    region = "eu-west-1"
    assume_role {
    role_arn     = "arn:aws:iam::564763253135:role/infra-deployer"
    session_name = "SESSION_NAME"
  }
}