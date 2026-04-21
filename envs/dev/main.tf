
module "lambda" {
  source           = "../../modules/lambda"
  lambda_name      = var.lambda_name
  s3_bucket        = var.s3_bucket
  s3_key           = var.s3_key
  handler          = var.handler
  runtime          = var.runtime
  environment_vars = var.environment_vars
}

module "api_gateway" {
  source        = "../../modules/api_gateway"
  lambda_arn    = module.lambda.lambda_arn
  api_name      = var.api_name
  stage_name    = var.stage_name
}

output "lambda_function_name" {
  value = module.lambda.lambda_name
}

output "api_gateway_url" {
  value = module.api_gateway.invoke_url
}
