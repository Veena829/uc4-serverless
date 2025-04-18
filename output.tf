output "dynamodb_table_name" {
  value = module.dynamodb.dynamodb_table_name
}

output "lambda_function_name_add" {
  value = module.lambda.lambda_function_name_add
}

output "lambda_function_name_get" {
  value = module.lambda.lambda_function_name_get
}

output "api_gateway_id" {
  value = module.api_gateway.api_gateway_id
}

