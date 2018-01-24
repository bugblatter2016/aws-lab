terraform {
  required_version = ">= 0.11"
}

provider "aws" {
  version         = "~> 1.6"
  region          = "${var.region}"
}