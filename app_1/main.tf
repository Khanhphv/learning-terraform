module "s3" {
  source = "./modules/s3"
  s3_bucket_name = var.s3_bucket_name
  bucket_id = data.aws_s3_bucket.reuse_s3_bucket.id
}

module "dynamodb" {
  source = "./modules/dynamodb"
  
}