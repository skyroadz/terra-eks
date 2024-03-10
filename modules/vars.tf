variable "region" {
    default = "us-east-1"
}

variable "name" {
    default = "em-template"
}

variable "cluster_version" {
    default     = "1.28"
}

variable "cluster_endpoint_private_access" {
    default = false
}
variable "cluster_endpoint_public_access" {
    default = true
}

variable "enable_cluster_creator_admin_permissions" {
    default = true
}

variable "eks_managed_node_group_defaults_disk_size" {
    type        = number
    default     = 50
}

variable "eks_managed_node_group_capacity_type" {
    default = "ON_DEMAND"
}

variable "eks_managed_node_group_instance_types" {
    type        = list(any)
    default     = ["m5.large"]
}

variable "eks_managed_node_group_min_size" {
    type = number
    default     = 2
}

variable "eks_managed_node_group_max_size" {
    description = "managed node group max size"
    type = number
    default     = 5
}

variable "eks_managed_node_group_desired_size" {
    type = number
    default     = 2
}

variable "cidr" {
  default = "10.0.0.0/16"
}

variable "azs" {
    default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "private_subnets" {
    default = ["10.0.10.0/24", "10.0.11.0/24", "10.0.12.0/24"]
}

variable "public_subnets" {
    default = ["10.0.20.0/24", "10.0.21.0/24", "10.0.22.0/24"]
}

variable "enable_nat_gateway" {
    default = true
}

variable "single_nat_gateway" {
    default = true
}

variable "one_nat_gateway_per_az" {
    default = false
}

variable "enable_dns_hostnames" {
    default = true
}
