resource "aws_nat_gateway" "gw" {
  allocation_id =  aws_eip.allocation_natgw.id
  subnet_id     =  aws_subnet.subnet_primary_public.id

  tags = var.tags
  depends_on = [ aws_eip.allocation_natgw, aws_subnet.subnet_primary, aws_internet_gateway.gw ]
}