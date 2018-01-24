terraform {
  backend "s3" {
    bucket = "aws-terraform-lab"
    key    = "management/services/kong/terraform.tfstate"
    region = "eu-west-1"
  }
}