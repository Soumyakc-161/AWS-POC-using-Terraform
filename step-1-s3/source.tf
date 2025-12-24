#Source bucket
resource "aws_s3_bucket" "source_policy_history" {
  provider = aws.source

  bucket = var.source_bucket_name

  force_destroy = true

  tags = {
    Name        = "policy-history"
    Environment = var.env
    Account     = "source"
  }
}


#Destination bucket
resource "aws_s3_bucket" "destination_policy_raw" {
  provider = aws.destination

  bucket = var.destination_bucket_name

  force_destroy = true

  tags = {
    Name        = "policy-raw"
    Environment = var.env
    Account     = "destination"
  }
}
