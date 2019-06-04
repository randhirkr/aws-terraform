provider "aws" {
  region = "us-west-2"
  profile = "randhirkr"
}

resource "aws_s3_bucket" "ran_terraform_state" {
  bucket = "ran-tfstate"

}

resource "aws_dynamodb_table" "ran_terraform_state_lock" {
  name           = "ran-tf-state-lock"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
