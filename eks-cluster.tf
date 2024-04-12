resource "aws_eks_cluster" "tech-challenge-cluster" {
  name     = "tech-challenge-cluster"
  role_arn = var.awsAcademyRole 

  vpc_config {
    subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
    security_group_ids = ["${var.securityGroupId}"]
  }

  access_config {
    authentication_mode = "CONFIG_MAP"
  }
}
