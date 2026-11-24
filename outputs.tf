output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.webserver.id
}

output "instance_state" {
  description = "EC2 instance state"
  value       = aws_instance.webserver.instance_state
}

output "public_ip" {
  description = "Public IPv4 address"
  value       = aws_instance.webserver.public_ip
}

output "website_url" {
  description = "Web server URL"
  value       = "http://${aws_instance.webserver.public_ip}"
}
