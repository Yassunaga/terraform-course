variable "aws_region" {
  type = string
  description = ""
  default = "us-east-1"
}

variable "aws_profile" {
  type = string
  description = "Profile containing AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY"
  default = "terraform"
}

variable "instance_ami" {
  type = string
  description = "The EC2 ami"
  default = "ami-0022f774911c1d690"
}

variable "instance_type" {
  type = string
  description = "The EC2 Instance Type"
  default = "t2.micro"
}

variable "instance_tags" {
  type = map(string)
  description = ""
  default = {
    Name = "Ubuntu"
    Project = "Curso AWS com Terraform"
  }
}