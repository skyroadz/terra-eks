module "eks" {
  source = "./modules"

  name                            = "devops-em"
  cluster_version                 = "1.29"
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = false

  eks_managed_node_group_min_size     = 2
  eks_managed_node_group_max_size     = 5
  eks_managed_node_group_desired_size = 2

  eks_managed_node_group_capacity_type  = "SPOT"
  eks_managed_node_group_instance_types = "c3.xlarge"

}
