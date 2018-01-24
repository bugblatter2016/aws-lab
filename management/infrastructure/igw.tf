module "aws_igw" {
  source    = "../../modules/local/aws-internet-gateway"

  vpc_name  = "${var.vpc_name}"
  vpc_id    = "${module.aws_vpc.vpc_id}"
}