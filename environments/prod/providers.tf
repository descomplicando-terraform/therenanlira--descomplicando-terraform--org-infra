terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.9.0"
}

provider "aws" {
  region = local.region

  default_tags {
    tags = {
      Environment = local.environment
      Org         = local.org_name
      Project     = local.project
    }
  }
}