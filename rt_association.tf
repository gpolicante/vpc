

resource "aws_route_table_association" "rt_public_association_primary" {
  
  subnet_id      =  aws_subnet.subnet_primary_public.id
  route_table_id = aws_route_table.rt_public.id
  depends_on = [aws_route_table.rt_public, aws_route_table.rt_public, aws_internet_gateway.gw ]
}


resource "aws_route_table_association" "rt_public_association_second" {
  
  subnet_id      =  aws_subnet.subnet_second_public.id
  route_table_id = aws_route_table.rt_public.id
  depends_on = [aws_route_table.rt_public, aws_route_table.rt_public, aws_internet_gateway.gw ]
}