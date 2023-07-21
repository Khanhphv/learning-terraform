provider "aws" {
    region = "${var.region}"
    access_key = "${var.aws_client_id}"
    secret_key = "${var.aws_client_secret}"
}
