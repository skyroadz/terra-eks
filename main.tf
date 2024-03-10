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
  cluster_name    = "devops-em"
  cluster_version = "1.29"

  subnet_ids = ["subnet-06c9ddfb206565f9e", "subnet-071a7256a950fe538", "subnet-0fe7df21aaa759ec5"]

  cluster_primary_security_group_id = "sg-0b3c7246de83dec3c"
  vpc_security_group_ids            = ["sg-0e88ea302246dace2"]


  min_size     = 2
  max_size     = 5
  desired_size = 2

  instance_types = ["t3.large"]
  capacity_type  = "SPOT"

  labels = {
    role = "spot"

  }

}