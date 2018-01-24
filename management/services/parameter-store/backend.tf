terraform {
  backend "s3" {
    bucket = "aws-terraform-lab"
    key    = "management/services/parameter_store/terraform.tfstate"
    region = "eu-west-1"
  }
}