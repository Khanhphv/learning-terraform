variable "s3_bucket_name" {
    description = "bucket name"
    type = string
    default = "khanh"
}

variable "aws_client_id" {
    description = "Client AWS ID"
    type = string
}

variable "aws_client_secret" {
    description = "Client Secret key"
    type = string
}

variable "region" {
    description = "Region"
    type = string
    default = "us-east-2"
}