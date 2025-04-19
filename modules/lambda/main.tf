resource "aws_lambda_function" "add_user" {
  function_name = "${var.lambda_function_name}_add"
  handler       = "add_user.lambda_handler"
  runtime       = "python3.8"
  role          = var.lambda_exec_role_arn
  filename      = "${path.root}/lambda_functions/add_user.zip"

  environment {
    variables = {
      TABLE_NAME = var.dynamodb_table_name
    }
  }
}

resource "aws_lambda_function" "get_users" {
  function_name = "${var.lambda_function_name}_get"
  handler       = "get_users.lambda_handler"
  runtime       = "python3.8"
  role          = var.lambda_exec_role_arn
  filename      = "${path.root}/lambda_functions/get_users.zip"

  environment {
    variables = {
      TABLE_NAME = var.dynamodb_table_name
    }
  }
}
