locals {
  environment = terraform.workspace # Use the Terraform workspace for the environment
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "ape-terragrunt-run-all-bucket-3u6t357f"
    key            = "state/${local.environment}/${path_relative_to_include()}/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "ape-terragrunt-run-all-bucket-locks"
  }
}
EOF
}
