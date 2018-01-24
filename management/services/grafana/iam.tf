module "aws_iam_role" {
  source = "../../../modules/local/aws-iam-role"

  name = "grafana"
}

module "aws_iam_role_policy" {
  source = "../../../modules/local/aws-iam-role-policy"

  name   = "cloudwatch_read_access"
  role   = "${module.aws_iam_role.aws_iam_role_name}"
  policy = "${file("lib/cloudwatch_iam.json")}"
}

module "aws_iam_instance_profile" {
  source = "../../../modules/local/aws-iam-instance-profile"

  name = "grafana"
  role = "${module.aws_iam_role.aws_iam_role_name}"
}
