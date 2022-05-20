variable "environment" {
  type        = string
  description = ""
}

variable "aws_region" {
  type        = string
  description = ""
}

variable "aws_profile" {
  type        = string
  description = "Profile containing AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY"
}

variable "instance_ami" {
  type        = string
  description = "The EC2 ami"
}

variable "instance_type" {
  type        = string
  description = "The EC2 Instance Type"
}

variable "instance_tags" {
  type        = map(string)
  description = ""
}