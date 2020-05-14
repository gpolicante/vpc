
variable "cidr_infracloudops" {
  type        = string
  description = "Block CIDR TO CIDR"
 

}

variable "team_infracloudops" {
  type = string

}

variable "cidr_subnet_one" {
  type    = string

}

variable "cidr_subnet_two" {
  type    = string

}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}





