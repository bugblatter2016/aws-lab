variable "cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "enable_dns_support" {
  description = "A boolean flag to enable/disable DNS support in the VPC. Defaults true"
  default     = "true"
}

variable "enable_dns_hostnames" {
  description = "A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false"
  default     = "false"
}

variable "vpc_name" {
  description = "The name of the VPC"
}