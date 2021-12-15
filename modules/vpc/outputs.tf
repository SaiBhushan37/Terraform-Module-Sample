output "vpcid" {
    value = "${aws_vpc.Terraform-Main.id}"
}  
output "all_Public_Subnet" {
    value = "${aws_subnet.PublicSubnet.*.id}"
}
output "all_Private_Subnet" {
    value = "${aws_subnet.privateSubnet.*.id}"
}
output "sg" {
    value = "${aws_security_group.allow_all.id}"
}
# value       = concat(aws_vpc.this.*.default_security_group_id, [""])[0]