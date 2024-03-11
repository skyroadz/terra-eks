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

variable "cidr" {
  description = "The IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "azs" {
  description = "A list of availability zones names or ids in the region"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
  description = "A list of private subnets"
  type        = list(string)
  default     = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
}

variable "public_subnets" {
  description = "A list of private subnets"
  type        = list(string)
  default     = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
}

variable "enable_nat_gateway" {
  description = "Should be true if you want to provision NAT Gateways for your private networks"
  type        = bool
  default     = true
}

variable "single_nat_gateway" {
  description = "Should be true if you want to provision a single shared NAT Gateway across all of your private networks"
  type        = bool
  default     = true
}

variable "one_nat_gateway_per_az" {
  description = "Should be true if you want only one NAT Gateway per availability zone. Requires `var.azs` to be set, and the number of `public_subnets` created to be greater than or equal to the number of availability zones specified in `var.azs`"
  type        = bool
  default     = false
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}
