output "cd_user_access_key_id" {
  value       = aws_iam_access_key.cd.id
  description = "AWS Key ID for CD User"
}

output "cd_user_access_key_secret" {
  value       = aws_iam_access_key.cd.secret
  sensitive   = true
  description = "Access Key Secret for CD User"
}
