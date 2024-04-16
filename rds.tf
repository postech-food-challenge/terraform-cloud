resource "aws_db_subnet_group" "subnet-rds" {
  name       = "subnet-rds"
  subnet_ids = ["${var.subnetA}", "${var.subnetB}", "${var.subnetC}"]
}

resource "aws_db_instance" "food_challenge" {
  db_name                = "foodchallenge"
  engine                 = "postgresql"
  engine_version         = "16.10"
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
  deletion_protection    = true
  vpc_security_group_ids = [var.securityGroupId]
  db_subnet_group_name   = aws_db_subnet_group.subnet-rds.id
  tags = {
    Name = "rds"
  }
}