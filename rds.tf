resource "aws_db_subnet_group" "subnet-rds" {
  name       = "subnet-rds"
  subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
}

resource "aws_db_instance" "products" {
  db_name                = "products"
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  storage_type           = "gp2"
  allocated_storage      = 20
  max_allocated_storage  = 30
  identifier             = "products"
  username               = "products"
  password               = "root1234"
  multi_az               = false
  skip_final_snapshot    = true
  apply_immediately      = true
  publicly_accessible    = false
  deletion_protection    = false
  vpc_security_group_ids = [var.securityGroupId, aws_eks_cluster.tech_challenge_cluster.vpc_config[0].cluster_security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.subnet-rds.id
  tags = {
    Name = "products-rds"
  }
}

resource "aws_db_instance" "orders" {
  db_name                = "orders"
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  storage_type           = "gp2"
  allocated_storage      = 20
  max_allocated_storage  = 30
  identifier             = "orders"
  username               = "orders"
  password               = "root1234"
  multi_az               = false
  skip_final_snapshot    = true
  apply_immediately      = true
  publicly_accessible    = false
  deletion_protection    = false
  vpc_security_group_ids = [var.securityGroupId, aws_eks_cluster.tech_challenge_cluster.vpc_config[0].cluster_security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.subnet-rds.id
  tags = {
    Name = "orders-rds"
  }
}

resource "aws_db_instance" "payment_service" {
  db_name                = "paymentservice"
  engine                 = "postgres"
  engine_version         = "16.1"
  instance_class         = "db.t3.micro"
  storage_type           = "gp2"
  allocated_storage      = 20
  max_allocated_storage  = 30
  identifier             = "payment-service"
  username               = "paymentservice"
  password               = "root1234"
  multi_az               = false
  skip_final_snapshot    = true
  apply_immediately      = true
  publicly_accessible    = false
  deletion_protection    = false
  vpc_security_group_ids = [var.securityGroupId, aws_eks_cluster.tech_challenge_cluster.vpc_config[0].cluster_security_group_id]
  db_subnet_group_name   = aws_db_subnet_group.subnet-rds.id
  tags = {
    Name = "payment-service-rds"
  }
}