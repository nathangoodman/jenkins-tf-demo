resource "aws_s3_bucket" "this" {
  bucket = "${var.bucketname}"
  acl    = "private"

}