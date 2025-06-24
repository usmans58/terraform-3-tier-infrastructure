output "frontend_security_group_id" {
  description = "ID of the frontend security group"
  value       = aws_security_group.frontend-sg.id

}

output "backend_security_group_id" {
  description = "ID of the backend security group"
  value       = aws_security_group.backend-sg.id

}