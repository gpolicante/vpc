resource "aws_eip" "allocation_natgw" {
tags = var.tags

depends_on = [aws_vpc.vpc_cloudops, ]
}