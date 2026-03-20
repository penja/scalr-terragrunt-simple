terraform {
  # Use relative path to refer to the module
  source = "./module"
}

remote_state {
  backend = "s3"

  config = {
    bucket         = "ape-terragrunt-run-all-bucket-llkfdprm"
    key            = "global/ape-terragrunt-run-all-bucket-llkfdprm/terraform.tfstate"  
    region         = "us-east-1"
    encrypt        = true                          
    dynamodb_table = "ape-terragrunt-run-all-bucket-locks"     
    disable_bucket_update = true
  }
 
}
