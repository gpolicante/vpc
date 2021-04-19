resource "aws_route_table" "rt_private" {
  vpc_id = aws_vpc.vpc_cloudops.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw.id
  }
  tags = var.tags

  depends_on = [aws_nat_gateway.gw, ]
}

resource "aws_route_table" "rt_public" {
  vpc_id = aws_vpc.vpc_cloudops.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
  tags = var.tags
  depends_on = [aws_internet_gateway.gw, ]
}

