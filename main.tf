provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "ab_18_07_2024_terraformer_test_1" {
  bucket  = "my-unique-bucket-name"
  tags    = {
	Name          = "ab-18-07-2024-terraformer-test-1"
	Environment    = "Test"
  }
}
