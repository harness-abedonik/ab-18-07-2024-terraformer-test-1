provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "ab-18-07-2024-terraformer-state-test-1"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_1" {
  name  = "ab_18_07_2024_terraformer_test_1"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_2" {
  name  = "ab_18_07_2024_terraformer_test_2"
  type  = "String"
  value = "This is a test parameter"
}

resource "aws_ssm_parameter" "ab_18_07_2024_terraformer_test_3" {
  name  = "ab_18_07_2024_terraformer_test_3"
  type  = "String"
  value = "This is a test parameter"
}

output "ab_18_07_2024_terraformer_test_1" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_1.arn
}

output "ab_18_07_2024_terraformer_test_2" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_2.arn
}

output "ab_18_07_2024_terraformer_test_3" {
  value = aws_ssm_parameter.ab_18_07_2024_terraformer_test_3.arn
}
