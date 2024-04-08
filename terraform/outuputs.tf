output "public_ip" {
  description = "Endereço IP público da instância EC2"
  value       = aws_instance.example.public_ip
}

output "instance_id" {
  description = "ID da instância EC2"
  value       = aws_instance.example.id
}
