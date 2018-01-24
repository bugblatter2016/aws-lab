output "vpc_id" {
  value = "${module.aws_vpc.vpc_id}"
}

output "igw_id" {
  value = "${module.aws_igw.igw_id}"
}

output "aws_private_subnet-1a" {
  value = "${module.aws_private_subnet-1a.id}"
}

output "aws_private_subnet-1b" {
  value = "${module.aws_private_subnet-1b.id}"
}