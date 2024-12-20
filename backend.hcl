#generate "backend" {
#  path      = "backend.tf"
#  if_exists = "overwrite_terragrunt"
#
#  # Using Terragrunt's `get_parent_terragrunt_dir` to dynamically reference parent variables
#  contents = <<EOF
#terraform {
#  backend "s3" {
#    bucket         = "ape-terragrunt-run-all-bucket-414fkrnf"
#    key            = "${path_relative_to_include()}/terraform.tfstate"
#    region         = "us-east-1"
#    encrypt        = true
#    dynamodb_table = "ape-terragrunt-run-all-bucket-locks"
#  }
#}
#EOF
#}
