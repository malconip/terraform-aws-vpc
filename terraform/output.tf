output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.prod-vpc.id
}

output "vpc_arn" {
  description = "The ARN of the VPC"
  value       = aws_vpc.prod-vpc.arn
}

output "public_subnet_1" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.prod-subnet-public-1.id
}

output "public_subnet_1_arn" {
  description = "List of ARNs of public subnets"
  value       = aws_subnet.prod-subnet-public-1.arn
}

output "public_subnets_1_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = aws_subnet.prod-subnet-public-1.cidr_block
}

output "public_subnet_2" {
  description = "List of IDs of public subnets"
  value       = aws_subnet.prod-subnet-public-2.id
}

output "public_subnet_2_arn" {
  description = "List of ARNs of public subnets"
  value       = aws_subnet.prod-subnet-public-2.arn
}

output "public_subnets_2_cidr_blocks" {
  description = "List of cidr_blocks of public subnets"
  value       = aws_subnet.prod-subnet-public-2.cidr_block
}
