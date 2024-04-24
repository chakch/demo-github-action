terraform {
    backend "s3" {}
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.46.0"
    }
  }
}
variable "prefix"{
}
resource "aws_s3_bucket" "example" {
  bucket = "${var.prefix}-my-tf-test-bucket-1"
  force_destroy = true
}

