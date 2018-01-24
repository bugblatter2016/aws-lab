terraform {
  backend "s3" {
    bucket = "aws-terraform-lab"
    key    = "management/services/grafana/terraform.tfstate"
    region = "eu-west-1"
  }
}