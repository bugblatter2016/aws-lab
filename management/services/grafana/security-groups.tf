module "grafana_security_group" {
  source = "../../../modules/local/aws-security-group"

  security_group_name         = "grafana"
  security_group_description  = "grafana"
  vpc_id                      = "${data.terraform_remote_state.infrastructure.vpc_id}"
}

module "security_group_rule_allow_ssh_from_world" {
  source = "../../../modules/local/aws-security-group-rule"

  rule_type         = "ingress"
  protocol          = "tcp"
  to_port           = "22"
  from_port         = "22"
  cidr_blocks       = "0.0.0.0/0"
  security_group_id = "${module.grafana_security_group.security_group_id}"

}

module "security_group_rule_allow_3000_from_world" {
  source = "../../../modules/local/aws-security-group-rule"

  rule_type         = "ingress"
  protocol          = "tcp"
  to_port           = "3000"
  from_port         = "3000"
  cidr_blocks       = "0.0.0.0/0"
  security_group_id = "${module.grafana_security_group.security_group_id}"

}

module "security_group_rule_allow_outbound_all" {
  source = "../../../modules/local/aws-security-group-rule"

  rule_type         = "egress"
  protocol          = "-1"
  to_port           = 0
  from_port         = 0
  cidr_blocks       = "0.0.0.0/0"
  security_group_id = "${module.grafana_security_group.security_group_id}"

}