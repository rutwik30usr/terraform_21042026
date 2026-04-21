variable "lambda_name" {}
variable "s3_bucket" {}
variable "s3_key" {}
variable "handler" {}
variable "runtime" {}
variable "environment_vars" { type = map(string) }
