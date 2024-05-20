resource "aws_dynamodb_table" "orders" {
  name     = "orders"
  hash_key = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name = "orders-dynamo-db"
  }
}