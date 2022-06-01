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
  region     = var.region
  access_key = "AKIA5XYOJQYUM66PC4CQ"
  secret_key = "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"
}

terraform {
  backend "s3" {
    bucket = "terraform-aws-vpc-state"
    key    = "default-infrastructure"
    region = var.region
  }
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-aws-vpc-state"

  versioning {
    enabled = true
  }
}
