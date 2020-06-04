
variable "cidr_infracloudops" {
  type        = string
  description = "Block CIDR TO CIDR"
  default     = null

}

variable "aws_vpc_thor" { 
type = string 
description = "vpc id"
default = null


}


variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "az_infracloudops" {
  type    = list(string)
  default = []

}

variable "private_subnets" {
  type    = list(string)
  default = []


}

variable "public_subnets" {
  type    = list(string)
  default = []


}





