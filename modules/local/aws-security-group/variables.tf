variable "security_group_name" {
  description = "The name of the security group. If omitted, Terraform will assign a random, unique name"
}

variable "security_group_description" {
  description = "The security group description. Defaults to \"Managed by Terraform\""
}

variable "vpc_id" {
  description = "The VPC ID."
}