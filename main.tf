# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  profile = "iamadmin-gen"
}

#stores the terraform state file in S3
terraform {
  backend "s3" {
    bucket = "terraform-project-remote-state-statefile"
    key    = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "iamadmin-gen"
  }
}