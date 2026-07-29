terraform {
  backend "s3" {
    bucket         = "dhoni-demo-terraform-bucket-123456"
    key            = "hub-vpc/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    
  }
}    