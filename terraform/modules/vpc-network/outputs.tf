output "vpc_id" {
  value = aws_vpc.this.id
}

output "vpc_cidr" {
  value = aws_vpc.this.cidr_block
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_route_table_id" {
  value = length(aws_route_table.public) > 0 ? aws_route_table.public[0].id : null
}

output "private_route_table_ids" {
  description = "One per AZ -- Phase 3 (TGW module) adds routes here to connect the spoke to the hub"
  value       = aws_route_table.private[*].id
}

output "nat_gateway_ids" {
  value = aws_nat_gateway.this[*].id
}

output "igw_id" {
  value = length(aws_internet_gateway.this) > 0 ? aws_internet_gateway.this[0].id : null
}