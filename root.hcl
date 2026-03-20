terraform {
  # Use relative path to refer to the module
  source = "./module"
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "ape-terragrunt-run-all-bucket-llkfdprm"
    key            = "global/ape-terragrunt-run-all-bucket-llkfdprm/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "ape-terragrunt-run-all-bucket-locks"
  }
}
EOF
}
