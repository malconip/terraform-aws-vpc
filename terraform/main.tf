terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  required_version = ">=0.14.9"

}

provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-aws-vpcterraform-state"
    key    = "default-infrastructure"
    region = "us-east-1"
  }
}
