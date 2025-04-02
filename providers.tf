provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "value"
    key = "terraform/state2"
    region = "us-east-1"
  }
}

