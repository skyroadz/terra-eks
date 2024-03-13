output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane"
  value       = module.eks.cluster_security_group_id
}

output "node_security_group_id" {
  description = "Security group ids attached to the nodes"
  value       = module.eks.node_security_group_id
}

output "cluster_primary_security_group_id" {
  description = "Primary Security group attached to the cluster"
  value       = module.eks.cluster_primary_security_group_id
}
