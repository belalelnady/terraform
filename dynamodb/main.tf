resource "aws_dynamodb_table" "terraform-lock-state" {
  name         = var.name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = var.tag_name
  }
}
