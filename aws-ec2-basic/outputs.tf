output "instance_id" {
  description = "The name of the EC2 instance"
  value       = aws_instance.learning_instance.id
}

output "public_ip_address" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.learning_instance.public_ip
}

output "arn" {
  description = "The ARN of the EC2 instance"
  value       = aws_instance.learning_instance.arn
}