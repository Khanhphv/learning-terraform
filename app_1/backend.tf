
terraform {
   backend "s3" {
      bucket    = var.s3_bucket_name
      key       = "terraform-state/terraform.tfstate"
      region    = "us-east-2"
      encrypt   = true
      dynamodb_table = "mycomponents_tf_lockid"
    }
}