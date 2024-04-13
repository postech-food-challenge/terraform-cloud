output "endpoint" {
  value = aws_eks_cluster.tech_challenge_cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.tech_challenge_cluster.certificate_authority[0].data
}

output "ecr-repository-url" {
  value = aws_ecr_repository.tech_challenge_image_registry.repository_url
}
