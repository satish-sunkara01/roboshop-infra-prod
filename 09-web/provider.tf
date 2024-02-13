terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }

  backend "s3" {
    bucket = "robodhop-state-dev"
    key    = "web_new"
    region = "us-east-1"
    dynamodb_table = "roboshop-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}