resource "aws_dynamodb_table" "user_data" {
  name           = var.dynamodb_table_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "Userid"

  attribute {
    name = "Userid"
    type = "S"
  }

#   attribute {
#     name = "_id"
#     type = "S"
#   }

  tags = {
    Name = var.dynamodb_table_name
  }
}

