terraform {
  backend "s3" {
    bucket = "aws-terraform-lab"
    key    = "management/services/influxdb/terraform.tfstate"
    region = "eu-west-1"
  }
}