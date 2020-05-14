

resource "aws_vpc" "vpc_cloudops" {

  cidr_block = var.cidr_infracloudops

  tags = {

    Name = var.name_cloudops
    Team = var.team_cloudops
  }

}
