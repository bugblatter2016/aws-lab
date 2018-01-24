module "aws_main_route_table" {
  source     = "../../modules/local/aws-main-route-table"

  vpc_name   = "${var.vpc_name}"
  vpc_id     = "${module.aws_vpc.vpc_id}"
  cidr_block = "0.0.0.0/0"
  gateway_id = "${module.aws_igw.igw_id}"
}