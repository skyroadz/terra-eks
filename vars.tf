variable "region" {
  description = "AWS region to provision in"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name of the EKS cluster and VPC"
  type        = string
  default     = "em-template"
}

variable "cluster_version" {
  description = "EKS cluster version"
  type        = number
  default     = "1.28"
}

variable "cluster_endpoint_private_access" {
  description = "Flag to enable private access to the EKS cluster endpoint"
  type        = bool
  default     = false
}
variable "cluster_endpoint_public_access" {
  description = "Flag to enable public access to the EKS cluster endpoint"
  type        = bool
  default     = true
}

variable "enable_cluster_creator_admin_permissions" {
  description = "Flag to enable cluster creator admin permissions to the current caller (Tf)"
  type        = bool
  default     = true
}

variable "eks_managed_node_group_defaults_disk_size" {
  description = "Disk size for nodes"
  type        = number
  default     = 50
}

variable "eks_managed_node_group_capacity_type" {
  type        = string
  description = "Capacity type for the EKS managed node group"
  default     = "ON_DEMAND"
}

variable "eks_managed_node_group_instance_types" {
  description = "List of instance types for the EKS managed node group"
  type        = list(any)
  default     = ["m5.large"]
}

variable "eks_managed_node_group_min_size" {
  description = "Minimum size of the EKS managed node group"
  type        = number
  default     = 2
}

variable "eks_managed_node_group_max_size" {
  description = "Maximum size of the EKS managed node group"
  type        = number
  default     = 5
}

variable "eks_managed_node_group_desired_size" {
  description = "Desired size of the EKS managed node group"
  type        = number
  default     = 2
}
