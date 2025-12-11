output "vpc_id" {
  description = "ID de la VPC utilizada"
  value       = data.aws_vpc.default.id
}

output "ami_id" {
  description = "ID del AMI utilizado"
  value       = data.aws_ami.amazon_linux.id
}

output "ami_name" {
  description = "Nombre del AMI"
  value       = data.aws_ami.amazon_linux.name
}

output "ec2_instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.web.id
}

output "ec2_public_ip" {
  description = "IP pública del EC2"
  value       = aws_instance.web.public_ip
}

output "web_url" {
  description = "URL del servidor web"
  value       = "http://${aws_instance.web.public_ip}"
}