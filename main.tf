module "iam" {
  source = "./modules/iam"
}

module "dynamodb" {
  source              = "./modules/dynamodb"
  dynamodb_table_name = var.dynamodb_table_name
}

module "lambda" {
  source              = "./modules/lambda"
  lambda_function_name = var.lambda_function_name
  dynamodb_table_name = var.dynamodb_table_name
  lambda_exec_role_arn = module.iam.lambda_exec_role_arn
}

module "api_gateway" {
  source          = "./modules/api_gateway"
  api_gateway_name = var.api_gateway_name
  lambda_get_users_arn = module.lambda.lambda_function_name_get
}
