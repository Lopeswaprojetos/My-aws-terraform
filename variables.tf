# Região AWS onde os recursos serão criados
variable "region" {
  description = "Região AWS onde os recursos serão criados"
  default     = "us-east-1"
}

# CIDR block para a VPC
variable "vpc_cidr" {
  description = "CIDR block para a VPC"
  default     = "10.0.0.0/16"
}

# CIDR block para a Subnet Pública
variable "public_subnet_cidr" {
  description = "CIDR block para a Subnet Pública"
  default     = "10.0.1.0/24"
}

# CIDR block para a Subnet Privada
variable "private_subnet_cidr" {
  description = "CIDR block para a Subnet Privada"
  default     = "10.0.2.0/24"
}

# Zona de disponibilidade onde os recursos serão criados
variable "availability_zone" {
  description = "Zona de disponibilidade onde os recursos serão criados"
  default     = "us-east-1a"
}

# Tipo da instância EC2
variable "instance_type" {
  description = "Tipo da instância EC2"
  default     = "t2.micro"
}

# ID da AMI para as instâncias EC2 (Amazon Linux 2, dentro do pacote Free Tier)
variable "ami_id" {
  description = "ID da AMI para as instâncias EC2"
  default     = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2 AMI
}

# Número mínimo de instâncias no Auto Scaling Group
variable "min_size" {
  description = "Número mínimo de instâncias no Auto Scaling Group"
  default     = 1
}

# Número desejado de instâncias no Auto Scaling Group
variable "desired_capacity" {
  description = "Número desejado de instâncias no Auto Scaling Group"
  default     = 2
}

# Número máximo de instâncias no Auto Scaling Group
variable "max_size" {
  description = "Número máximo de instâncias no Auto Scaling Group"
  default     = 3
}
