output "endpoint" {
  value = aws_eks_cluster.food-challenge.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.food-challenge.certificate_authority[0].data
}