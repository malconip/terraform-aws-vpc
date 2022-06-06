resource "aws_ssm_parameter" "sg" {
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
