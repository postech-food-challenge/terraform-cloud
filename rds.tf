resource "aws_db_instance" "food_challenge" {
  allocated_storage      = 20
  db_name                = "foodchallenge"
  engine                 = "postgresql"
  instance_class         = "db.t3.micro"
  identifier             = "rds"
  username               = "foodchallenge"
  password               = "root1234"
  multi_az               = false
  skip_final_snapshot    = true
  vpc_security_group_ids = [var.securityGroupId]
  tags = {
    Name = "rds"
  }
}