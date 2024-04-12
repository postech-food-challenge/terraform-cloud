resource "aws_eks_cluster" "food-challenge" {
  name     = "food-challenge"
  role_arn = vars.awsAcademyRole 

  vpc_config {
    subnet_ids = ["${vars.subnetA}", "${vars.subnetB}", "${vars.subnetC}"]
    security_group_ids = ["${vars.securityGroupId}"]
  }

  access_config {
    authentication_mode = "CONFIG_MAP"
  }
}
