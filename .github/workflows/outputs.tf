output "vpc_id" {
  value = aws_vpc.main.id
}

output "nat_gateway" {
  value = aws_nat_gateway.nat.id
}    