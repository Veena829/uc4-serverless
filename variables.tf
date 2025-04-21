variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "DynamoDB table name"
  type        = string
  default     = "serverless_workshop_intro"
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
  default     = "user_data_management"
}

variable "api_gateway_name" {
  description = "API Gateway name"
  type        = string
  default     = "user_data_api"
}
 resource "aws_lambda_function" "add_user" {
   filename         = var.add_user_zip_file
   ...
 }

 resource "aws_lambda_function" "get_users" {
   filename         = var.get_users_zip_file
   ...
 }
 

