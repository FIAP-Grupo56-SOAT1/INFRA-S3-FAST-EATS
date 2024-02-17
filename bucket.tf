resource "aws_s3_bucket" "bucket" {
  bucket = "bucket-fiap56-to-remote-state"
  force_destroy = true
}
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}