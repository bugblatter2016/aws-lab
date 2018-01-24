terraform {
  backend "s3" {
    bucket = "aws-terraform-lab"
    key    = "management/infrastructure/terraform.tfstate"
    region = "eu-west-1"
  }
}