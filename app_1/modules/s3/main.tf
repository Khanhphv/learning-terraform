
resource "aws_s3_object" "reuse_bucket" {
    bucket = var.bucket_id
    key = local.key
}

resource "aws_s3_bucket" "new_bucket" {
  bucket = var.s3_bucket_name
}