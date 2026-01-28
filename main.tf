# Créer un utilisateur IAM
resource "aws_iam_user" "terraform_user" {
  name = var.iam_user_name
}

# Créer un bucket S3
resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name
  acl    = "private"
}

# Upload d'un fichier index.html
resource "aws_s3_bucket_object" "index_file" {
  bucket = aws_s3_bucket.my_bucket.id
  key    = "index.html"
  source = "index.html"
  acl    = "public-read"
}
