resource "aws_subnet" "PublicSubnet" {
  count = length(var.Publiccidr)
  cidr_block = element(var.Publiccidr,count.index)
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = element(var.azs,count.index)
    tags = {
    Name = "Publicsubnets-${count.index+1}"
  }
}
resource "aws_subnet" "privateSubnet" {
  count = length(var.Privatecidr)
  cidr_block = element(var.Privatecidr,count.index)
   vpc_id     = aws_vpc.Terraform-Main.id
   availability_zone = element(var.azs,count.index)
    tags = {
    Name = "Privatesubnet-${count.index+1}"
  }
}