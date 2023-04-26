locals {
  prefix_list_id = split("/", aws_ram_resource_share_accepter.this.resources[0])[1]
}