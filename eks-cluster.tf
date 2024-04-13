resource "aws_eks_cluster" "tech_challenge_cluster" {
  name     = "tech-challenge-cluster"
  role_arn = var.awsAcademyRole 

  vpc_config {
    subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
    security_group_ids = ["${var.securityGroupId}"]
  }

  access_config {
    authentication_mode = "API_AND_CONFIG_MAP"
  }
}

resource "aws_eks_access_entry" "tech_challenge_cluster_access_entry" {
  cluster_name      = aws_eks_cluster.tech_challenge_cluster.name
  principal_arn     = var.eksAccessEntryPrincipalArn
  kubernetes_groups = ["group-1", "group-2"]
  type              = "STANDARD"
}

resource "aws_eks_access_policy_association" "tech_challenge_cluster_access_entry_policy_association" {
  cluster_name  = aws_eks_cluster.tech_challenge_cluster.name
  policy_arn    = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
  principal_arn = var.eksAccessEntryPrincipalArn

  access_scope {
    type       = "cluster"
  }
}