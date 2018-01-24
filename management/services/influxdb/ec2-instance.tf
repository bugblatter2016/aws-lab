module "ec2_instance" "influxdb" {
  source = "../../../modules/local/aws-ec2-instance"

  ami_filter                  = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"
  instance_name               = "influxdb"
  ami_owner                   = "099720109477"
  subnet_id                   = "${data.terraform_remote_state.infrastructure.aws_private_subnet-1a}"
  associate_public_ip_address = true
  security_groups             = "${module.influxdb_security_group.security_group_id}"
  user_data                   = "${file("lib/cloud-init.txt")}"
//  iam_instance_profile        = "${module.aws_iam_instance_profile.aws_iam_instance_profile_name}"
}