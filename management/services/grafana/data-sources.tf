data "terraform_remote_state" "infrastructure" {
  backend = "s3"
  config {
    bucket = "aws-terraform-lab"
    key    = "management/infrastructure/terraform.tfstate"
    region = "eu-west-1"
  }
}