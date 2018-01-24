module "aws_public_subnet-1a" {
  source = "../../modules/local/aws-subnet"

  vpc_name          = "${var.vpc_name}"
  availability_zone = "eu-west-1a"
  subnet_cidr_block = "${cidrsubnet(var.cidr_block, 3, 0)}"
  vpc_id            = "${module.aws_vpc.vpc_id}"
  tag_name          = "${var.vpc_name}-public-eu-west-1a"
}

module "aws_public_subnet-1b" {
  source = "../../modules/local/aws-subnet"

  vpc_name          = "${var.vpc_name}"
  availability_zone = "eu-west-1b"
  subnet_cidr_block = "${cidrsubnet(var.cidr_block, 3, 1)}"
  vpc_id            = "${module.aws_vpc.vpc_id}"
  tag_name          = "${var.vpc_name}-public-eu-west-1b"
}

module "aws_private_subnet-1a" {
  source = "../../modules/local/aws-subnet"

  vpc_name          = "${var.vpc_name}"
  availability_zone = "eu-west-1a"
  subnet_cidr_block = "${cidrsubnet(var.cidr_block, 3, 2)}"
  vpc_id            = "${module.aws_vpc.vpc_id}"
  tag_name          = "${var.vpc_name}-private-eu-west-1a"
}

module "aws_private_subnet-1b" {
  source = "../../modules/local/aws-subnet"

  vpc_name          = "${var.vpc_name}"
  availability_zone = "eu-west-1b"
  subnet_cidr_block = "${cidrsubnet(var.cidr_block, 3, 3)}"
  vpc_id            = "${module.aws_vpc.vpc_id}"
  tag_name          = "${var.vpc_name}-private-eu-west-1b"
}