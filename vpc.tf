

resource "aws_vpc" "vpc_cloudops" {

  cidr_block = var.cidr_infracloudops

  tags = var.tags
 
  
}


