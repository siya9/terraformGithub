# ============================================================
#  modules/iam/variables.tf
# ============================================================

variable "user_name" {
  description = "IAM username (must be unique within the AWS account)"
  type        = string
}

variable "path" {
  description = "IAM path for the user (usually just /)"
  type        = string
  default     = "/"
}

variable "policy_arns" {
  description = <<-EOT
    List of IAM managed policy ARNs to attach to this user.
    Examples:
      "arn:aws:iam::aws:policy/ReadOnlyAccess"
      "arn:aws:iam::aws:policy/AmazonS3FullAccess"
    Leave empty [] to create user with no policies.
  EOT
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "Extra tags to apply to the IAM user"
  type        = map(string)
  default     = {}
}
