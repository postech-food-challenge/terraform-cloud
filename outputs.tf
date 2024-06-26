output "eks-cluster-endpoint" {
  value = aws_eks_cluster.tech_challenge_cluster.endpoint
}

output "rds-host-products" {
  value = aws_db_instance.products.address
}

output "rds-port-products" {
  value = aws_db_instance.products.port
}

output "rds-host-payment-service" {
  value = aws_db_instance.payment_service.address
}

output "rds-port-payment-service" {
  value = aws_db_instance.payment_service.port
}

output "rds-host-order-service" {
  value = aws_db_instance.orders.address
}

output "rds-port-order-service" {
  value = aws_db_instance.orders.port
}

output "rds-host-customers-service" {
  value = aws_db_instance.customers.address
}

output "rds-port-customers-service" {
  value = aws_db_instance.customers.port
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.tech_challenge_cluster.certificate_authority[0].data
}

output "ecr-repository-url" {
  value = aws_ecr_repository.tech_challenge_image_registry.repository_url
}
