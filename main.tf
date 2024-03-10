module "eks" {
  source = "./modules"

  name                            = "devops-em"
  cluster_version                 = "1.29"
  cluster_endpoint_public_access  = true
  cluster_endpoint_private_access = false

  eks_managed_node_group_min_size     = 1
  eks_managed_node_group_max_size     = 5
  eks_managed_node_group_desired_size = 1

}

module "eks_managed_node_group" {
  source = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  name            = "spot"
  cluster_name    = module.eks.cluster_name
  cluster_version = module.eks.cluster_version

  subnet_ids = module.vpc.private_subnets

  cluster_primary_security_group_id = module.eks.cluster_primary_security_group_id
  vpc_security_group_ids            = [module.eks.node_security_group_id]


  min_size     = 2
  max_size     = 5
  desired_size = 2

  instance_types = ["t3.large"]
  capacity_type  = "SPOT"

  labels = {
    role = "spot"

  }

}