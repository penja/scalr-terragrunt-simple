terraform {
  source = "../../module"
}

generate "backend" {
  path      = "backend.tf"
  if_exists = "overwrite_terragrunt"
  contents = <<EOF
terraform {
  backend "s3" {
    bucket         = "pe-terragrunt-run-all-bucket-sab2yvdj"
    key            = "global/ape-terragrunt-run-all-bucket-llkfdprm/terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "ape-terragrunt-run-all-bucket-locks"
  }
}
EOF
}

inputs = {
  bucket_name = "prod-bucket"
  region      = "us-east-1"
  test        = "value"
}
