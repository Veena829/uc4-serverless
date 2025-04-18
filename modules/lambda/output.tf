output "lambda_function_name_add" {
  value = aws_lambda_function.add_user.function_name
}

output "lambda_function_name_get" {
  value = aws_lambda_function.get_users.function_name
}

