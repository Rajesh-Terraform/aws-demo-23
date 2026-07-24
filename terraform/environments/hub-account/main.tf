module "network" {
  source = "../../modules/vpc-network"

  name_prefix          = "hub"
  vpc_cidr             = var.vpc_cidr
  azs                  = var.azs
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs

  create_internet_gateway = true
  create_nat_gateways     = true
}