terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.23.0"
    }
  }

  backend "s3" {
    bucket               = "udemy-devops-tf"
    key                  = "tf-state-deploy"
    region               = "eu-central-1"
    encrypt              = true
    dynamodb_table       = "udemy-devops-tf-lock"
    workspace_key_prefix = "tf-state-deploy-env"
  }
}

provider "aws" {
  region = "eu-central-1"
  default_tags {
    tags = {
      Environment = terraform.workspace
      Project     = var.project
      Contact     = var.contact
      ManageBy    = "Terraform/deploy"
    }
  }
}

locals {
  prefix = "${var.prefix}-${terraform.workspace}"
}

data "aws_region" "current" {}
