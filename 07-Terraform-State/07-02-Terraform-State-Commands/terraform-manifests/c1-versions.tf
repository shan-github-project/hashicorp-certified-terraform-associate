# Terraform Block
terraform {
  required_version = "~> 1.3.8" # which means any version equal & above 0.14 like 0.15, 0.16 etc and < 1.xx
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  # Adding Backend as S3 for Remote State Storage
  backend "s3" {
    bucket = "blueredprism"
    key    = "statecommands/terraform.tfstate"
    region = "us-east-2"

    # Enable during Step-09     
    # For State Locking
    dynamodb_table = "terraform-dev-state-table"

  }
}

# Provider Block
provider "aws" {
  region  = var.aws_region
  profile = "default"
}
/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/
