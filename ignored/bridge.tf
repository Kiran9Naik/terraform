resource "aws_lambda_function" "lambda_function" {
  function_name = "my_lambda_function"
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  role          = aws_iam_role.lambda_role.arn
  filename      = "lambda_function.zip"

  source_code_hash = filebase64sha256("lambda_function.zip")

  environment {
    variables = {
      MY_ENV_VAR = "some_value"
    }
  }
  
}