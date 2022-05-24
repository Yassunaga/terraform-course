terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.2.0"
    }

  }
}


provider "aws" {
  region  = var.region
  profile = var.profile
}
