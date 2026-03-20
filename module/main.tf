variable "region" {

}

variable "test" {}

provider "aws" {
  region = var.region
}

terraform {
  required_providers {
    scalr = {
      source  = "registry.scalr.io/scalr/scalr"
      version = "3.15.0"
    }
  }
}

variable "webhook_timeout" {
  default = 15
}

resource "scalr_webhook" "test_wh_1" {
  name         = "test_webhook_1"
  enabled      = true
  url          = "https://mywebhook.local"
  secret_key   = "my-Secret-key2025"
  timeout      = var.webhook_timeout
  max_attempts = 3
  events = ["run:completed", "run:errored"]
  header {
    name  = "header1"
    value = "value1"
  }
  header {
    name  = "header2"
    value = "value2"
  }
}




resource "null_resource" "test" {
  provisioner "local-exec" {
    command = "sleep 1"  # replace 300 with the number of seconds you want to sleep
  }
  triggers = {
    always_run = timestamp()
  }
}

#output "bucket_name" {
#  value = aws_s3_bucket.test_bucket.bucket
#}


#output "bucket_arn" {
#  value = aws_s3_bucket.test_bucket.arn
#}
