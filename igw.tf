resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc_cloudops.id

  tags = var.tags
  depends_on = [aws_vpc.vpc_cloudops, ]
}