# ============================================================
#  modules/iam/main.tf
#  Creates one IAM user with optional policy attachments.
#  Called once per entry via for_each in root main.tf.
# ============================================================

resource "aws_iam_user" "this" {
  name = var.user_name
  path = var.path

  tags = merge(
    {
      "Name"      = var.user_name
      "ManagedBy" = "Terraform"
    },
    var.tags
  )
}

# Attach managed policies to the user (e.g. ReadOnlyAccess, AmazonS3FullAccess)
resource "aws_iam_user_policy_attachment" "this" {
  for_each = toset(var.policy_arns)

  user       = aws_iam_user.this.name
  policy_arn = each.value
}
