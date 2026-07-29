variable "name_prefix" {
  description = "Short name used as a prefix on every resource (e.g. \"hub\", \"spoke\")"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}


variable "private_subnet_cidrs" {
  description = "CIDRs for private subnets, one per AZ."
  type        = list(string)
}


variable "enable_dns_support" {
  type    = bool
  default = true
}

