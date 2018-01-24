//module "aws_eip_1" {
//  source = "../../modules/local/aws-eip"
//}

//module "aws_nat_gw_1" {
//  source            = "../../modules/local/aws-nat-gateway"
//
//  subnet_id         = "${module.aws_public_subnet-1a}"
//  eip_allocation_id = "${module.aws_eip_1.id}"
//}