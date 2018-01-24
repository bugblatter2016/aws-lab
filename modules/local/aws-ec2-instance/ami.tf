data "aws_ami" "ami" {
  most_recent = "${var.most_recent}"

  filter {
    name   = "name"
    values = ["${var.ami_filter}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["${var.virtualization_type}"]
  }

  owners = ["${var.ami_owner}"]
}