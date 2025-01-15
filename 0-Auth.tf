provider "aws" {
  region = "us-east-1"
}

terraform {

  cloud {
    organization = "Monday-For-Theo"

    workspaces {
      name = "Monday-For-Theo"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

