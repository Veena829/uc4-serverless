resource "aws_api_gateway_rest_api" "user_data_api" {
  name        = var.api_gateway_name
  description = "API Gateway for user data management"
}

resource "aws_api_gateway_resource" "user" {
  rest_api_id = aws_api_gateway_rest_api.user_data_api.id
  parent_id   = aws_api_gateway_rest_api.user_data_api.root_resource_id
  path_part   = "user"
}

resource "aws_api_gateway_method" "get_user" {
  rest_api_id   = aws_api_gateway_rest_api.user_data_api.id
  resource_id   = aws_api_gateway_resource.user.id
  http_method   = "GET"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "get_user" {
  rest_api_id = aws_api_gateway_rest_api.user_data_api.id
  resource_id = aws_api_gateway_resource.user.id
  http_method = aws_api_gateway_method.get_user.http_method
  type        = "AWS_PROXY"
  integration_http_method = "POST"
  uri         = var.lambda_get_users_arn
}
