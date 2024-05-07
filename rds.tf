resource "aws_db_subnet_group" "subnet-rds" {
  name       = "subnet-rds"
  subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
}

resource "aws_db_instance" "food_challenge" {
  db_name                = "foodchallenge"
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  storage_type           = "gp2"
  allocated_storage      = 20
  max_allocated_storage  = 30
  identifier             = "food-challenge"
  username               = "foodchallenge"
  password               = "root1234"
  multi_az               = false
  skip_final_snapshot    = true
  apply_immediately      = true
  publicly_accessible    = false
  deletion_protection    = false
  vpc_security_group_ids = [var.securityGroupId, aws_eks_cluster.tech_challenge_cluster.vpc_config[0].cluster_security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.subnet-rds.id
  tags = {
    Name = "rds"
  }
}