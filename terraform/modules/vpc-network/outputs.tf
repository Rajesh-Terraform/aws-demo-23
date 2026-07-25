output "vpc_id" {
  value = aws_vpc.this.id
}

output "vpc_cidr" {
  value = aws_vpc.this.cidr_block
}


output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}



output "private_route_table_ids" {
  description = "One per AZ -- Phase 3 (TGW module) adds routes here to connect the spoke to the hub"
  value       = aws_route_table.private[*].id
}



