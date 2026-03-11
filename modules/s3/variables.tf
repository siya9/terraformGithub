# ============================================================
#  modules/s3/variables.tf
# ============================================================

variable "bucket_name" {
  description = "S3 bucket name (must be globally unique across all AWS accounts)"
  type        = string
}

variable "versioning_enabled" {
  description = "Enable versioning on the bucket (true = keep history of objects)"
  type        = bool
  default     = false
}

variable "force_destroy" {
  description = "If true, delete all objects when bucket is destroyed (use with caution)"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Extra tags to apply to the bucket"
  type        = map(string)
  default     = {}
}
