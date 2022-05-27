terraform {
  required_version = "1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }
  }
}


data "aws_caller_identity" "current" {}

provider "aws" {
  region  = "us-east-1"
  profile = "terraform"
}

resource "aws_s3_bucket" "remote_state" {
  bucket = "tfstats-${data.aws_caller_identity.current.account_id}"

  tags = {
    description = "Stores terraform remote state files"
    managed_by  = "terraform"
    owner       = "Gabriel Yassunaga"
    created_at  = "25/05/2022"
  }
}

resource "aws_s3_bucket_versioning" "versioning_config" {
  bucket = aws_s3_bucket.remote_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote_state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote_state.arn
}