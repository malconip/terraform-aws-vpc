resource "aws_ssm_parameter" "vpc-id" {
  name        = "/vpc/vpc-id"
  description = "Id of the vpc"
  type        = "String"
  value       = aws_vpc.prod-vpc.id

  tags = {
    environment = "prod"

  }
  depends_on = [
    aws_vpc.prod-vpc
  ]
}

resource "aws_ssm_parameter" "ssm-prod-subnet-public-1" {
  name        = "/vpc/prod-subnet-public-1"
  description = "Id of the prod-subnet-public-1"
  type        = "String"
  value       = aws_subnet.prod-subnet-public-1.id

  tags = {
    environment = "prod"

  }
  depends_on = [
    aws_subnet.prod-subnet-public-1
  ]
}

resource "aws_ssm_parameter" "ssm-prod-subnet-public-2" {
  name        = "/vpc/prod-subnet-public-2"
  description = "Id of the prod-subnet-public-2"
  type        = "String"
  value       = aws_subnet.prod-subnet-public-2.id

  tags = {
    environment = "prod"

  }
  depends_on = [
    aws_subnet.prod-subnet-public-2
  ]
}
