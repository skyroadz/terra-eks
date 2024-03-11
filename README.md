# eks_cluster

> This Terraform Module manages the creation of an EKS cluster, it combines the official terraform module alongside aws-eks-blueprints for additional addons deployments (Loadbalancer Controller, ArgoCD, Metric Server and more!). 🚀 [Official-Module](https://github.com/aws-ia/terraform-aws-eks-blueprints-addons/blob/main/README.md#inputs) - 
[EKS-Blueprints-Addons](https://github.com/aws-ia/terraform-aws-eks-blueprints-addons/blob/main/README.md#inputs)




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
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"us-east-1"` | no |

## Outputs

No outputs.
