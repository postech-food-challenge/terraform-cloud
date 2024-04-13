resource "aws_db_instance" "food_challenge" {
  allocated_storage      = 10
  db_name                = "foodchallenge"
  engine                 = "aurora-postgresql"
  instance_class         = "db.t3.micro"
  identifier             = "rds"
  username               = "foodchallenge"
  password               = "root1234"
  parameter_group_name   = "default.mysql5.7"
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.securityGroupId]
  tags = {
    Name = "rds"
  }
}