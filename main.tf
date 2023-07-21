module "app_1" {
  source = "./app_1"
  s3_bucket_name = var.s3_bucket_name
  region = var.region
  aws_client_id = var.aws_client_id
  aws_client_secret = var.aws_client_secret
}


# module "app2" {
#   source = "./app2"
#   region = var.region
# }
