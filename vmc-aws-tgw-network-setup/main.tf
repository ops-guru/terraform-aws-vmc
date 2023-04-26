resource "aws_ram_resource_share_accepter" "this" {
  share_arn = var.resource_share_arn

  depends_on = [
    data.aws_route.this
  ]
}

resource "aws_ec2_transit_gateway_peering_attachment_accepter" "this" {
  transit_gateway_attachment_id = data.aws_ec2_transit_gateway_attachment.this.transit_gateway_attachment_id
  tags                          = var.transit_gateway_attachment_tags
}

resource "aws_ec2_transit_gateway_route_table_association" "this" {
  for_each                       = toset(var.transit_gateway_route_table_ids)
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment_accepter.this.id
  transit_gateway_route_table_id = each.value
}

resource "aws_ec2_transit_gateway_prefix_list_reference" "this" {
  for_each                       = toset(var.transit_gateway_route_table_ids)
  prefix_list_id                 = local.prefix_list_id
  transit_gateway_attachment_id  = aws_ec2_transit_gateway_peering_attachment_accepter.this.id
  transit_gateway_route_table_id = each.value
}

resource "aws_route" "to_vmc" {
  for_each = toset(var.private_routetable_ids)

  route_table_id             = each.value
  destination_prefix_list_id = local.prefix_list_id
  network_interface_id       = data.aws_route.this.network_interface_id
}

resource "aws_default_security_group" "this" {
  vpc_id = data.aws_vpc.this.id

  ingress {
    protocol        = -1
    from_port       = 0
    to_port         = 0
    prefix_list_ids = [data.aws_ec2_managed_prefix_list.numeris.id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}