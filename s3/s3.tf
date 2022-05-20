terraform {
  required_version = "1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.14.0"
    }
  }
}


provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-32131234"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Creator     = "Gabriel Yassunaga"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}