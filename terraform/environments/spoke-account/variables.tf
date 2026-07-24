variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile pointed at account 434097521299"
  type        = string
  default     = "spoke"
}

variable "environment" {
  type    = string
  default = "practice"
}

variable "vpc_cidr" {
  type    = string
  default = "10.1.0.0/16"
}

variable "azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.1.0.0/24", "10.1.1.0/24"]
}