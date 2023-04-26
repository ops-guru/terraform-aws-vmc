data "aws_ec2_managed_prefix_list" "numeris" {
  filter {
    name   = "prefix-list-name"
    values = ["numeris-cidr-blocks"]
  }
}

data "aws_vpc" "this" {
  id = var.vpc_id
}

data "aws_route" "this" {
  route_table_id         = data.aws_vpc.this.main_route_table_id
  destination_cidr_block = var.management_gateway_cidr
}

data "aws_ec2_transit_gateway_attachment" "this" {
  filter {
    name   = "state"
    values = ["pendingAcceptance"]
  }
  filter {
    name   = "resource-type"
    values = ["peering"]
  }
  filter {
    name   = "resource-owner-id"
    values = [aws_ram_resource_share_accepter.this.sender_account_id]
  }
}