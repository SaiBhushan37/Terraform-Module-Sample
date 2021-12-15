resource "aws_vpc" "Terraform-Main" {
  cidr_block = var.vpccidr
  tags = {
    Name = "Terraform Main"
  }
}
resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"
	tags = {
        Name = "TerraformIgw"
    }
}