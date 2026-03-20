terraform {
  source = "../../module"
}

include "root" {
  path = find_in_parent_folders()
}


inputs = {
  bucket_name = "prod-bucket"
  region      = "us-east-1"
  test        = "value"
}
