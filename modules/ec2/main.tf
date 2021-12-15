# resource "aws_instance" "Terraform-ec2" {
#     count = 3
#     ami = var.amiid
#     instance_type = var.instancesize
#     subnet_id = "${element(var.PublicSubnet, count.index)}"
#     associate_public_ip_address = var.enable_public_ip
#     vpc_security_group_ids = ["$(var.sg)"]
#     tags = {
#       Name = "Terraform machine-${count.index+1}"
#     }
# }