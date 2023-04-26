output "ram_share_accepter_invitation_arn" {
  description = "The ARN of the resource share invitation."
  value       = aws_ram_resource_share_accepter.this.invitation_arn
}

output "ram_share_accepter_share_id" {
  description = "The ID of the resource share as displayed in the console."
  value       = aws_ram_resource_share_accepter.this.share_id
}

output "ram_share_accepter_status" {
  description = "The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED)."
  value       = aws_ram_resource_share_accepter.this.status
}

output "ram_share_accepter_receiver_account_id" {
  description = "The account ID of the receiver account which accepts the invitation."
  value       = aws_ram_resource_share_accepter.this.receiver_account_id
}

output "ram_share_accepter_sender_account_id" {
  description = "The account ID of the sender account which submits the invitation."
  value       = aws_ram_resource_share_accepter.this.sender_account_id
}

output "ram_share_accepter_share_name" {
  description = "The name of the resource share."
  value       = aws_ram_resource_share_accepter.this.share_name
}

output "ram_share_accepter_resources" {
  description = "A list of the resource ARNs shared via the resource share."
  value       = aws_ram_resource_share_accepter.this.resources
}

output "tgw_peer_attach_accepter_id" {
  description = "EC2 Transit Gateway Attachment identifier."
  value       = aws_ec2_transit_gateway_peering_attachment_accepter.this.id
}

output "tgw_peer_attach_accepter_transit_gateway_id" {
  description = "Identifier of EC2 Transit Gateway."
  value       = aws_ec2_transit_gateway_peering_attachment_accepter.this.transit_gateway_id
}

output "tgw_peer_attach_accepter_peer_tgw_gateway_id" {
  description = "Identifier of EC2 Transit Gateway to peer with."
  value       = aws_ec2_transit_gateway_peering_attachment_accepter.this.transit_gateway_id
}

output "tgw_peer_attach_peer_account_id" {
  description = "Identifier of the AWS account that owns the EC2 TGW peering."
  value       = aws_ec2_transit_gateway_peering_attachment_accepter.this.peer_account_id
}

output "tgw_rt_association_id" {
  description = "EC2 Transit Gateway Route Table identifier combined with EC2 Transit Gateway Attachment identifier."
  value       = [for k in aws_ec2_transit_gateway_route_table_association.this : k.id]
}

output "tgw_rt_association_resource_id" {
  description = "Identifier of the resource."
  value       = [for k in aws_ec2_transit_gateway_route_table_association.this : k.resource_id]
}

output "tgw_rt_association_resource_type" {
  description = "Type of the resource."
  value       = [for k in aws_ec2_transit_gateway_route_table_association.this : k.resource_type]
}

output "tgw_prefix_list_reference_id" {
  description = "EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore."
  value       = [for k in aws_ec2_transit_gateway_prefix_list_reference.this : k.id]
}

output "route_id" {
  description = "Route identifier computed from the routing table identifier and route destination."
  value       = [for k in aws_route.to_vmc : k.id]
}

output "route_instance_owner_id" {
  description = "The AWS account ID of the owner of the EC2 instance."
  value       = [for k in aws_route.to_vmc : k.instance_owner_id]
}

output "route_origin" {
  description = "How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation."
  value       = [for k in aws_route.to_vmc : k.origin]
}

output "route_state" {
  description = "The state of the route - active or blackhole."
  value       = [for k in aws_route.to_vmc : k.state]
}

output "security_group_arn" {
  value       = aws_default_security_group.this.arn
  description = "ARN of the security group."
}

output "security_group_id" {
  value       = aws_default_security_group.this.id
  description = "ID of the security group."
}

output "security_group_name" {
  description = "Name of the security group."
  value       = aws_default_security_group.this.name
}

output "security_group_owner_id" {
  description = "Owner ID."
  value       = aws_default_security_group.this.owner_id
}