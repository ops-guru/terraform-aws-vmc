variable "resource_share_arn" {
  type = string
}

variable "management_gateway_cidr" {
  type = string
}

variable "transit_gateway_attachment_tags" {
  default = {}
  type    = map(string)
}

variable "vpc_id" {
  type = string
}

variable "private_routetable_ids" {
  type = list(string)
}

variable "transit_gateway_route_table_ids" {
  type = list(string)
}