resource "aws_instance" "instance" {
  ami                         = "${data.aws_ami.ami.id}"
  instance_type               = "${var.instance_type}"
  vpc_security_group_ids      = ["${var.security_groups}"]
  associate_public_ip_address = "${var.associate_public_ip_address}"
  subnet_id                   = "${var.subnet_id}"
  user_data                   = "${var.user_data}"
  key_name                    = "${var.key_name}"
  iam_instance_profile        = "${var.iam_instance_profile}"
  tags {
    Name = "${var.instance_name}"
  }

}