resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_file_path}"
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  content_type = local.json_content_type


  tags = local.common_tags
}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_file_path
  etag         = filemd5(local.ip_file_path)
  content_type = local.json_content_type

  tags = local.common_tags
}


resource "aws_s3_bucket" "fa_images_238" {
  bucket = "fa-images-238"

  tags = {
    imported_at = "25/05/2022"
    managed_by  = "terraform"
  }
}