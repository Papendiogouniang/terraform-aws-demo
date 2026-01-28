provider "aws" {
  region     = "eu-west-3"
  access_key = var.aws_access_key != "" ? var.aws_access_key : (try(env.AWS_ACCESS_KEY_ID, ""))
  secret_key = var.aws_secret_key != "" ? var.aws_secret_key : (try(env.AWS_SECRET_ACCESS_KEY, ""))
}
