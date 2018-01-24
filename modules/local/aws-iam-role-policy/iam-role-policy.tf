resource "aws_iam_role_policy" "policy" {
  name   = "${var.name}"
  role   = "${var.role}"
  policy = "${var.policy}"
}