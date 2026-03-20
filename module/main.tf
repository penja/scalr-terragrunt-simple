variable "region" {

}

variable "test" {}

provider "aws" {
  region = var.region
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
