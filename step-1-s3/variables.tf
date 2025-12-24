variable "env" {
  description = "Environment name"
  type        = string
}

variable "source_bucket_name" {
  description = "Source S3 bucket name"
  type        = string
}

variable "destination_bucket_name" {
  description = "Destination S3 bucket name"
  type        = string
}
