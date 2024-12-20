terraform {
  source = "../../module"
}


inputs = {
  bucket_name = "prod-bucket"
  region      = "us-east-1"
}
