# EKS Cluster Module

> This Terraform Module manages the creation of an EKS cluster, it combines the official terraform module alongside aws-eks-blueprints for additional addons deployments (Loadbalancer Controller, ArgoCD, Metric Server and more!). 🚀 [Official-Module](https://github.com/aws-ia/terraform-aws-eks-blueprints-addons/blob/main/README.md#inputs) - 
[EKS-Blueprints-Addons](https://github.com/aws-ia/terraform-aws-eks-blueprints-addons/blob/main/README.md#inputs)


## Deployed EKS Cluster

This module will bootstrap an Amazon EKS cluster, provisioning the follwoing:

- VPC
- 3 Private Subnets
- 3 Public Subnets
- NAT Gateway
- Internet Gateway
- EKS cluster
- Security Groups 
- aws-auth configmap to add users/roles for cluster access 

It will also deploy the following addons inside the cluster alongside the requirenments such as IAM policy, roles, IRSA:

- AWS Load Balancer Controller
- Metrics server 
- ArgoCD 

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.34 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.9 |
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eks"></a> [eks](#module\_eks) | ./modules | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
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
| <a name="input_name"></a> [name](#input\_name) | Name of the EKS cluster and VPC | `string` | `"em-template"` | no |
| <a name="input_region"></a> [region](#input\_region) | AWS region to provision in | `string` | `"us-east-1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cluster_endpoint"></a> [cluster\_endpoint](#output\_cluster\_endpoint) | Endpoint for EKS control plane |
| <a name="output_cluster_primary_security_group_id"></a> [cluster\_primary\_security\_group\_id](#output\_cluster\_primary\_security\_group\_id) | Primary Security group attached to the cluster |
| <a name="output_cluster_security_group_id"></a> [cluster\_security\_group\_id](#output\_cluster\_security\_group\_id) | Security group ids attached to the cluster control plane |
| <a name="output_eks_cluster_name"></a> [eks\_cluster\_name](#output\_eks\_cluster\_name) | Amazon EKS Cluster Name |
| <a name="output_node_security_group_id"></a> [node\_security\_group\_id](#output\_node\_security\_group\_id) | Security group ids attached to the nodes |
