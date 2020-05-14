
variable "cidr_infracloudops" {
  type        = string
  description = "Block CIDR TO CIDR"
  default     = null

}

variable "team_infracloudops" {
  type    = string
  default = null
}

variable "cidr_subnet_one" {
  type    = string
  default = null
}

variable "cidr_subnet_two" {
  type    = string
  default = null
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}





