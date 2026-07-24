variable "name_prefix" {
  description = "Short name used as a prefix on every resource (e.g. \"hub\", \"spoke\")"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "Availability zones to spread subnets across. public_subnet_cidrs and private_subnet_cidrs are matched to this list by index, so keep all three lists the same length (or leave public_subnet_cidrs empty)."
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDRs for public subnets, one per AZ. Leave as [] for a fully private VPC (no public subnets, no IGW, no NAT) -- this is what the spoke account uses."
  type        = list(string)
  default     = []
}

variable "private_subnet_cidrs" {
  description = "CIDRs for private subnets, one per AZ."
  type        = list(string)
}

variable "create_internet_gateway" {
  description = "Whether to create and attach an internet gateway. Set to false for a fully private (spoke) VPC."
  type        = bool
  default     = false
}

variable "create_nat_gateways" {
  description = "Whether to create one NAT gateway per public subnet, and route private subnets through it. Set to false for a fully private (spoke) VPC. Requires create_internet_gateway = true and at least one public subnet."
  type        = bool
  default     = false
}

variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "enable_dns_hostnames" {
  type    = bool
  default = true
}