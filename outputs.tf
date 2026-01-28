output "iam_user_arn" {
  value = aws_iam_user.terraform_user.arn
}

output "bucket_name" {
  value = aws_s3_bucket.my_bucket.id
}
