provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "my-terraform-bucket3003"
    key = "terraform/state2"
    region = "us-east-1"
  }
}

