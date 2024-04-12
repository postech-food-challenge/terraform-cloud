output "endpoint" {
  value = aws_eks_cluster.tech-challenge-cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.tech-challenge-cluster.certificate_authority[0].data
}