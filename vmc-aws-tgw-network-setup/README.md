<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_security_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_security_group) | resource |
| [aws_ec2_transit_gateway_peering_attachment_accepter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_peering_attachment_accepter) | resource |
| [aws_ec2_transit_gateway_prefix_list_reference.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_prefix_list_reference) | resource |
| [aws_ec2_transit_gateway_route_table_association.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_route_table_association) | resource |
| [aws_ram_resource_share_accepter.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ram_resource_share_accepter) | resource |
| [aws_route.to_vmc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_ec2_managed_prefix_list.numeris](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_managed_prefix_list) | data source |
| [aws_ec2_transit_gateway_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ec2_transit_gateway_attachment) | data source |
| [aws_route.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route) | data source |
| [aws_vpc.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_management_gateway_cidr"></a> [management\_gateway\_cidr](#input\_management\_gateway\_cidr) | n/a | `string` | n/a | yes |
| <a name="input_private_routetable_ids"></a> [private\_routetable\_ids](#input\_private\_routetable\_ids) | n/a | `list(string)` | n/a | yes |
| <a name="input_resource_share_arn"></a> [resource\_share\_arn](#input\_resource\_share\_arn) | n/a | `string` | n/a | yes |
| <a name="input_transit_gateway_attachment_tags"></a> [transit\_gateway\_attachment\_tags](#input\_transit\_gateway\_attachment\_tags) | n/a | `map(string)` | `{}` | no |
| <a name="input_transit_gateway_route_table_ids"></a> [transit\_gateway\_route\_table\_ids](#input\_transit\_gateway\_route\_table\_ids) | n/a | `list(string)` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ram_share_accepter_invitation_arn"></a> [ram\_share\_accepter\_invitation\_arn](#output\_ram\_share\_accepter\_invitation\_arn) | The ARN of the resource share invitation. |
| <a name="output_ram_share_accepter_receiver_account_id"></a> [ram\_share\_accepter\_receiver\_account\_id](#output\_ram\_share\_accepter\_receiver\_account\_id) | The account ID of the receiver account which accepts the invitation. |
| <a name="output_ram_share_accepter_resources"></a> [ram\_share\_accepter\_resources](#output\_ram\_share\_accepter\_resources) | A list of the resource ARNs shared via the resource share. |
| <a name="output_ram_share_accepter_sender_account_id"></a> [ram\_share\_accepter\_sender\_account\_id](#output\_ram\_share\_accepter\_sender\_account\_id) | The account ID of the sender account which submits the invitation. |
| <a name="output_ram_share_accepter_share_id"></a> [ram\_share\_accepter\_share\_id](#output\_ram\_share\_accepter\_share\_id) | The ID of the resource share as displayed in the console. |
| <a name="output_ram_share_accepter_share_name"></a> [ram\_share\_accepter\_share\_name](#output\_ram\_share\_accepter\_share\_name) | The name of the resource share. |
| <a name="output_ram_share_accepter_status"></a> [ram\_share\_accepter\_status](#output\_ram\_share\_accepter\_status) | The status of the resource share (ACTIVE, PENDING, FAILED, DELETING, DELETED). |
| <a name="output_route_id"></a> [route\_id](#output\_route\_id) | Route identifier computed from the routing table identifier and route destination. |
| <a name="output_route_instance_owner_id"></a> [route\_instance\_owner\_id](#output\_route\_instance\_owner\_id) | The AWS account ID of the owner of the EC2 instance. |
| <a name="output_route_origin"></a> [route\_origin](#output\_route\_origin) | How the route was created - CreateRouteTable, CreateRoute or EnableVgwRoutePropagation. |
| <a name="output_route_state"></a> [route\_state](#output\_route\_state) | The state of the route - active or blackhole. |
| <a name="output_security_group_arn"></a> [security\_group\_arn](#output\_security\_group\_arn) | ARN of the security group. |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID of the security group. |
| <a name="output_security_group_name"></a> [security\_group\_name](#output\_security\_group\_name) | Name of the security group. |
| <a name="output_security_group_owner_id"></a> [security\_group\_owner\_id](#output\_security\_group\_owner\_id) | Owner ID. |
| <a name="output_tgw_peer_attach_accepter_id"></a> [tgw\_peer\_attach\_accepter\_id](#output\_tgw\_peer\_attach\_accepter\_id) | EC2 Transit Gateway Attachment identifier. |
| <a name="output_tgw_peer_attach_accepter_peer_tgw_gateway_id"></a> [tgw\_peer\_attach\_accepter\_peer\_tgw\_gateway\_id](#output\_tgw\_peer\_attach\_accepter\_peer\_tgw\_gateway\_id) | Identifier of EC2 Transit Gateway to peer with. |
| <a name="output_tgw_peer_attach_accepter_transit_gateway_id"></a> [tgw\_peer\_attach\_accepter\_transit\_gateway\_id](#output\_tgw\_peer\_attach\_accepter\_transit\_gateway\_id) | Identifier of EC2 Transit Gateway. |
| <a name="output_tgw_peer_attach_peer_account_id"></a> [tgw\_peer\_attach\_peer\_account\_id](#output\_tgw\_peer\_attach\_peer\_account\_id) | Identifier of the AWS account that owns the EC2 TGW peering. |
| <a name="output_tgw_prefix_list_reference_id"></a> [tgw\_prefix\_list\_reference\_id](#output\_tgw\_prefix\_list\_reference\_id) | EC2 Transit Gateway Route Table identifier and EC2 Prefix List identifier, separated by an underscore. |
| <a name="output_tgw_rt_association_id"></a> [tgw\_rt\_association\_id](#output\_tgw\_rt\_association\_id) | EC2 Transit Gateway Route Table identifier combined with EC2 Transit Gateway Attachment identifier. |
| <a name="output_tgw_rt_association_resource_id"></a> [tgw\_rt\_association\_resource\_id](#output\_tgw\_rt\_association\_resource\_id) | Identifier of the resource. |
| <a name="output_tgw_rt_association_resource_type"></a> [tgw\_rt\_association\_resource\_type](#output\_tgw\_rt\_association\_resource\_type) | Type of the resource. |
<!-- END_TF_DOCS -->