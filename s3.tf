resource "aws_s3_bucket" "media_bucket" {
  bucket = "media-streaming-bucket"
  acl    = "public"

  tags = {
    Name        = "Media Streaming Bucket"
    Environment = "Production"
  }
}
