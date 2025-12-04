output "alb_dns_name" {
  description = "DNS name of the application load balancer"
  value       = aws_lb.app_alb.dns_name
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}
