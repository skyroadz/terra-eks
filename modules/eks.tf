module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.1.0"

  cluster_name                   = var.name
  cluster_version                = var.cluster_version
  cluster_endpoint_public_access = var.cluster_endpoint_public_access
  cluster_endpoint_private_access = var.cluster_endpoint_private_access
  
  cluster_addons = {
    coredns = {}
    kube-proxy = {}
    vpc-cni = {
      before_compute = true
      most_recent    = true 
      configuration_values = jsonencode({
        env = {
          # Reference docs https://docs.aws.amazon.com/eks/latest/userguide/cni-increase-ip-addresses.html
          ENABLE_PREFIX_DELEGATION = "true"
          WARM_PREFIX_TARGET       = "1"
        }
      })
    }
  }
  
  enable_cluster_creator_admin_permissions = var.enable_cluster_creator_admin_permissions

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
    disk_size      = var.eks_managed_node_group_defaults_disk_size

  }

  eks_managed_node_groups = {
    node_group = {
      min_size     = var.eks_managed_node_group_min_size
      max_size     = var.eks_managed_node_group_max_size
      desired_size = var.eks_managed_node_group_desired_size
      labels = {
        role = "on-demand"
      }

      instance_types = var.eks_managed_node_group_instance_types
      capacity_type  = upper(var.eks_managed_node_group_capacity_type)
    }
  }

}
