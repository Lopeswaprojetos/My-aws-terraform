# Saída do ID da VPC criada
output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main.id
}

# Saída do ID da Subnet Pública criada
output "public_subnet_id" {
  description = "ID da Subnet Pública criada"
  value       = aws_subnet.public.id
}

# Saída do ID da Subnet Privada criada
output "private_subnet_id" {
  description = "ID da Subnet Privada criada"
  value       = aws_subnet.private.id
}

# Saída do ID do Internet Gateway criado
output "internet_gateway_id" {
  description = "ID do Internet Gateway criado"
  value       = aws_internet_gateway.igw.id
}

# Saída do ID do NAT Gateway criado
output "nat_gateway_id" {
  description = "ID do NAT Gateway criado"
  value       = aws_nat_gateway.nat.id
}

# Saída do ID do Auto Scaling Group criado
output "autoscaling_group_id" {
  description = "ID do Auto Scaling Group criado"
  value       = aws_autoscaling_group.asg.id
}

# Saída do nome do Application Load Balancer criado
output "alb_name" {
  description = "Nome do Application Load Balancer criado"
  value       = aws_lb.app_lb.name
}

# Saída do ARN do Target Group criado
output "target_group_arn" {
  description = "ARN do Target Group criado"
  value       = aws_lb_target_group.tg.arn
}

# Saída do DNS do Load Balancer
output "alb_dns_name" {
  description = "DNS do Application Load Balancer"
  value       = aws_lb.app_lb.dns_name
}
