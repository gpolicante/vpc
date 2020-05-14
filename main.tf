provider "aws"{
  region = var.region 
  } 

resource "aws_vpc" "vpc_cloudops" {

  cidr_block = var.cidr_infracloudops

  tags = {

    Name = var.name_infracloudops
    Team = var.team_infracloudops
  }

}
