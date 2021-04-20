

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


resource "aws_route_table_association" "rt_public_association_thr" {
  
  subnet_id      =  aws_subnet.subnet_thr_public.id
  route_table_id = aws_route_table.rt_public.id
  depends_on = [aws_route_table.rt_public, aws_route_table.rt_public, aws_internet_gateway.gw ]
}


resource "aws_route_table_association" "rt_public_association_quarter" {
  
  subnet_id      =  aws_subnet.subnet_quarter_public.id
  route_table_id = aws_route_table.rt_public.id
  depends_on = [aws_route_table.rt_public, aws_route_table.rt_public, aws_internet_gateway.gw ]
}



### privada


resource "aws_route_table_association" "rt_private_association_primary" {
  
  subnet_id      =  aws_subnet.subnet_primary.id
  route_table_id = aws_route_table.rt_private.id
  depends_on = [aws_route_table.rt_private, aws_route_table.rt_private, aws_internet_gateway.gw ]
}


resource "aws_route_table_association" "rt_private_association_second" {
  
  subnet_id      =  aws_subnet.subnet_second.id
  route_table_id = aws_route_table.rt_private.id
  depends_on = [aws_route_table.rt_private, aws_route_table.rt_private, aws_internet_gateway.gw ]
}


resource "aws_route_table_association" "rt_private_association_thr" {
  
  subnet_id      =  aws_subnet.subnet_thr.id
  route_table_id = aws_route_table.rt_private.id
  depends_on = [aws_route_table.rt_private, aws_route_table.rt_private, aws_internet_gateway.gw ]
}


resource "aws_route_table_association" "rt_private_association_quarter" {
  
  subnet_id      =  aws_subnet.subnet_quarter.id
  route_table_id = aws_route_table.rt_private.id
  depends_on = [aws_route_table.rt_private, aws_route_table.rt_private, aws_internet_gateway.gw ]
}