
resource "aws_subnet" "subnet_primary" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.private_subnets[0]
  availability_zone = var.az_infracloudops[0]


  tags       = merge(
 var.tags, 
  { 
      Type = "private"
  }

  )
  depends_on = [aws_vpc.vpc_cloudops, ]
}

resource "aws_subnet" "subnet_second" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.private_subnets[1]
  availability_zone = var.az_infracloudops[1]


  tags       = merge(
 var.tags, 
  { 
      Type = "private"
  }

  )
  
  depends_on = [aws_vpc.vpc_cloudops, ]
}

resource "aws_subnet" "subnet_thr" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.private_subnets[2]
  availability_zone = var.az_infracloudops[2]


  tags       = merge(
 var.tags, 
  { 
      Type = "private"
  }

  )
  
  depends_on = [aws_vpc.vpc_cloudops, ]
}

# resource "aws_subnet" "subnet_quarter" {

#   vpc_id            = aws_vpc.vpc_cloudops.id
#   cidr_block        = var.private_subnets[3]
#   availability_zone = var.az_infracloudops[3]


#   tags       = merge(
#  var.tags, 
#   { 
#       Type = "private"
#   }

#   )
  
#   depends_on = [aws_vpc.vpc_cloudops, ]
# }


resource "aws_subnet" "subnet_primary_public" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.public_subnets[0]
  availability_zone = var.az_infracloudops[0]


  tags       =   merge(
 var.tags, 
  { 
      Type = "public"
  }

  )
  depends_on = [aws_vpc.vpc_cloudops, ]
}

resource "aws_subnet" "subnet_second_public" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.public_subnets[1]
  availability_zone = var.az_infracloudops[1]


  tags       = merge(
 var.tags, 
  { 
      Type = "public"
  }

  )
  depends_on = [aws_vpc.vpc_cloudops, ]
}

resource "aws_subnet" "subnet_thr_public" {

  vpc_id            = aws_vpc.vpc_cloudops.id
  cidr_block        = var.public_subnets[2]
  availability_zone = var.az_infracloudops[2]


  tags       = merge(
 var.tags, 
  { 
      Type = "public"
  }

  )
  depends_on = [aws_vpc.vpc_cloudops, ]
}

# resource "aws_subnet" "subnet_quarter_public" {

#   vpc_id            = aws_vpc.vpc_cloudops.id
#   cidr_block        = var.public_subnets[3]
#   availability_zone = var.az_infracloudops[3]


#   tags       = merge(
#  var.tags, 
#   { 
#       Type = "public"
#   }

#   )
#   depends_on = [aws_vpc.vpc_cloudops, ]
# }