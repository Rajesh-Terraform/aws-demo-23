module "network" {
  source = "../../modules/vpc-network"

  name_prefix          = "spoke"
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  private_subnet_cidrs = var.private_subnet_cidrs

  # No public_subnet_cidrs, no IGW, no NAT -- fully private on purpose.
  create_internet_gateway = false
  create_nat_gateways     = false
}