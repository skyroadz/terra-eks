## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.9.0 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~>2.25.2 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_auth"></a> [auth](#module\_auth) | terraform-aws-modules/eks/aws//modules/aws-auth | ~> 20.0 |
| <a name="module_eks"></a> [eks](#module\_eks) | terraform-aws-modules/eks/aws | 20.1.0 |
| <a name="module_eks_blueprints_addons"></a> [eks\_blueprints\_addons](#module\_eks\_blueprints\_addons) | aws-ia/eks-blueprints-addons/aws | ~> 1.14 |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | ~> 5.0 |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azs"></a> [azs](#input\_azs) | A list of availability zones names or ids in the region | `list(string)` | <pre>[<br>  "us-east-1a",<br>  "us-east-1b",<br>  "us-east-1c"<br>]</pre> | no |
| <a name="input_cidr"></a> [cidr](#input\_cidr) | The IPv4 CIDR block for the VPC | `string` | `"10.0.0.0/16"` | no |
| <a name="input_cluster_endpoint_private_access"></a> [cluster\_endpoint\_private\_access](#input\_cluster\_endpoint\_private\_access) | Flag to enable private access to the EKS cluster endpoint | `bool` | `false` | no |
| <a name="input_cluster_endpoint_public_access"></a> [cluster\_endpoint\_public\_access](#input\_cluster\_endpoint\_public\_access) | Flag to enable public access to the EKS cluster endpoint | `bool` | `true` | no |
| <a name="input_cluster_version"></a> [cluster\_version](#input\_cluster\_version) | EKS cluster version | `number` | `"1.28"` | no |
| <a name="input_eks_managed_node_group_capacity_type"></a> [eks\_managed\_node\_group\_capacity\_type](#input\_eks\_managed\_node\_group\_capacity\_type) | Capacity type for the EKS managed node group | `string` | `"ON_DEMAND"` | no |
| <a name="input_eks_managed_node_group_defaults_disk_size"></a> [eks\_managed\_node\_group\_defaults\_disk\_size](#input\_eks\_managed\_node\_group\_defaults\_disk\_size) | Disk size for nodes | `number` | `50` | no |
| <a name="input_eks_managed_node_group_desired_size"></a> [eks\_managed\_node\_group\_desired\_size](#input\_eks\_managed\_node\_group\_desired\_size) | Desired size of the EKS managed node group | `number` | `2` | no |
| <a name="input_eks_managed_node_group_instance_types"></a> [eks\_managed\_node\_group\_instance\_types](#input\_eks\_managed\_node\_group\_instance\_types) | List of instance types for the EKS managed node group | `list(any)` | <pre>[<br>  "m5.large"<br>]</pre> | no |
| <a name="input_eks_managed_node_group_max_size"></a> [eks\_managed\_node\_group\_max\_size](#input\_eks\_managed\_node\_group\_max\_size) | Maximum size of the EKS managed node group | `number` | `5` | no |
| <a name="input_eks_managed_node_group_min_size"></a> [eks\_managed\_node\_group\_min\_size](#input\_eks\_managed\_node\_group\_min\_size) | Minimum size of the EKS managed node group | `number` | `2` | no |
| <a name="input_enable_cluster_creator_admin_permissions"></a> [enable\_cluster\_creator\_admin\_permissions](#input\_enable\_cluster\_creator\_admin\_permissions) | Flag to enable cluster creator admin permissions to the current caller (Tf) | `bool` | `true` | no |
| <a name="input_enable_dns_hostnames"></a> [enable\_dns\_hostnames](#input\_enable\_dns\_hostnames) | Should be true to enable DNS hostnames in the VPC | `bool` | `true` | no |
| <a name="input_enable_nat_gateway"></a> [enable\_nat\_gateway](#input\_enable\_nat\_gateway) | Should be true if you want to provision NAT Gateways for your private networks | `bool` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the EKS cluster and VPC | `string` | `"em-template"` | no |
| <a name="input_one_nat_gateway_per_az"></a> [one\_nat\_gateway\_per\_az](#input\_one\_nat\_gateway\_per\_az) | Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs` | `bool` | `false` | no |
| <a name="input_private_subnets"></a> [private\_subnets](#input\_private\_subnets) | A list of private subnets | `list(string)` | <pre>[<br>  "10.0.10.0/24",<br>  "10.0.11.0/24",<br>  "10.0.12.0/24"<br>]</pre> | no |
| <a name="input_public_subnets"></a> [public\_subnets](#input\_public\_subnets) | A list of private subnets | `list(string)` | <pre>[<br>  "10.0.20.0/24",<br>  "10.0.21.0/24",<br>  "10.0.22.0/24"<br>]</pre> | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to provision in | `string` | `"us-east-1"` | no |
| <a name="input_single_nat_gateway"></a> [single\_nat\_gateway](#input\_single\_nat\_gateway) | Should be true if you want to provision a single shared NAT Gateway across all of your private networks | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for EKS control plane |
| <a name="output_cluster_primary_security_group_id"></a> [cluster\_primary\_security\_group\_id](#output\_cluster\_primary\_security\_group\_id) | Primary Security group attached to the cluster |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | Security group ids attached to the cluster control plane |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | Amazon EKS Cluster Name |
| <a name="output_node_security_group_id"></a> [node\_security\_group\_id](#output\_node\_security\_group\_id) | Security group ids attached to the nodes |
