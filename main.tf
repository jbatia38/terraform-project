# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "iamadmin"
}

#stores the terraform state file in S3
terraform {
  backend "s3" {
    bucket = "web-project-terraform-remote-state"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "iamadmin"
  }
}