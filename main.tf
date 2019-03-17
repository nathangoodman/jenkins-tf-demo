resource "aws_s3_bucket" "this" {
  bucket = "${var.bucketname}"
  acl    = "private"
  
  versioning {
    enabled = true
  }
  
  tags = {
    Name        = "N8 Demo Bucket"
    Environment = "Demo"
  }
}