terraform {
  backend "s3" {
    bucket         = "devops-directive-tf-state-my" # Created & Versioning Enabled Manually.
    key            = "terraform.tfstate"   # path and name of state file.
    region         = "ap-southeast-2"
    dynamodb_table = "state_table" # name of dynamodb table for State Lock, must have partition key = "LockID"
    # encrypt = true # by default
  }
}
