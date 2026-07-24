terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # backend "s3" {
  backend "s3" {
    bucket = "dhoni-demo-terraform-bucket-123456"
    key    = "spoke-account/network.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Environment = var.environment
      Account     = "spoke"
      ManagedBy   = "terraform"
    }
  }
}