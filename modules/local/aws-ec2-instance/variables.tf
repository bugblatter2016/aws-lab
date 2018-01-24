variable "instance_type" {
  description = "Instance Type"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name of instance - used in tagging"
}

variable "ami_filter" {
  description = "Filter used to find the correct ec2 Instance AMI"
}

variable "most_recent" {
  description = "Select most recent version of AMI"
  default     = true
}

variable "virtualization_type" {
  description = "Virtualization type of instance"
  default     = "hvm"
}

variable "ami_owner" {
  description = "Owner of AMI"
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in."
}

variable "associate_public_ip_address" {
  description = "Associate a public ip address with an instance in a VPC. Boolean value."
  default     = false
}

variable "security_groups" {
  description = "A list of security group names to associate with. If you are creating Instances in a VPC, use vpc_security_group_ids instead."
}

variable "user_data" {
  description = "The user data to provide when launching the instance. Do not pass gzip-compressed data via this argument; see user_data_base64 instead."
}

variable "key_name" {
  description = "The key name of the Instance."
  default     = "dannyb-main"
}

variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with. Specified as the name of the Instance Profile."
  default     = ""
}