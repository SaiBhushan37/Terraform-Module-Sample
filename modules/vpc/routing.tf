resource "aws_route_table" "terraform-public" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }

    tags = {
        Name = "Terraform Public RoutingTable"
    }
}
resource "aws_route_table" "terraform-private" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"
    tags = {
        Name = "Terraform Private RoutingTable"
    }
}
resource "aws_route_table_association" "terraform-public" {
  count = length(var.Publiccidr)
    subnet_id = "${element(aws_subnet.PublicSubnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}
resource "aws_route_table_association" "terraform-private" {
  count = length(var.Privatecidr)
    subnet_id = "${element(aws_subnet.privateSubnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.terraform-private.id}"
}