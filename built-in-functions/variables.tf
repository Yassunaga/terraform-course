variable "env" {}

variable "instance_ami" {
  type    = string
  default = "ami-0022f774911c1d690"

  validation {
    condition = length(var.instance_ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"
    error_message = "The instance_ami value must be a valid AMI id, starting with \"ami-\"."
  }
}

variable "instance_number" {
  type = object({
    dev = number
    prod = number
  })
  description = "Number of instances to create"
  default = {
    dev = 1
    prod = 3
  }
}


variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type    = string
  default = "terraform"
}