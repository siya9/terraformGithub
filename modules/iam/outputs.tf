# ============================================================
#  modules/iam/outputs.tf
# ============================================================

output "user_name" {
  description = "The IAM username"
  value       = aws_iam_user.this.name
}

output "user_arn" {
  description = "The ARN of the IAM user"
  value       = aws_iam_user.this.arn
}

output "unique_id" {
  description = "The unique ID assigned by AWS to this IAM user"
  value       = aws_iam_user.this.unique_id
}
