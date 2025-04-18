variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name"
  type        = string
}

variable "lambda_exec_role_arn" {
  description = "IAM role ARN for Lambda execution"
  type        = string
}
