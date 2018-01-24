resource "aws_route_table" "main" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "${var.cidr_block}"
    gateway_id = "${var.gateway_id}"
  }

  tags {
    Name = "${var.vpc_name}-main-route-table"
  }
}

resource "aws_main_route_table_association" "main" {
  vpc_id         = "${var.vpc_id}"
  route_table_id = "${aws_route_table.main.id}"
}