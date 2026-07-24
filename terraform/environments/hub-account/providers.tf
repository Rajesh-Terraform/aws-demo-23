terraform {
  required_version = ">= 1.5.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  # backend "s3" {
  #   bucket         = "your-tfstate-bucket"
  #   key            = "hub-account/network.tfstate"
  #   region         = "us-east-1"
  #   dynamodb_table = "tf-locks"
  # }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Environment = var.environment
      Account     = "hub"
      ManagedBy   = "terraform"
    }
  }
}