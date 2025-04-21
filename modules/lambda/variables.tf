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
 variable "add_user_zip_file" {
   description = "Path to the add_user.zip file"
   type        = string
 }

 variable "get_users_zip_file" {
   description = "Path to the get_users.zip file"
   type        = string
 }
 
