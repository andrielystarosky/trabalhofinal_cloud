output "instance_public_ip" {
  description = "Public IP da instância EC2"
  value       = aws_instance.api_instance.public_ip
}

output "instance_id" {
  description = "ID da instância EC2"
  value       = aws_instance.api_instance.id
}
