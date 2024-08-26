<!-- BEGIN_TF_DOCS -->
## Requirements

Infraestrutura AWS com Terraform
Este projeto demonstra como criar uma infraestrutura completa na AWS usando Terraform. A arquitetura inclui uma Virtual Private Cloud (VPC) com sub-redes públicas e privadas, um Internet Gateway, um NAT Gateway, um Auto Scaling Group e um Application Load Balancer.

Visão Geral da Arquitetura
A arquitetura consiste nos seguintes componentes:

VPC: Uma Virtual Private Cloud para hospedar seus recursos AWS.
Sub-rede Pública: Uma sub-rede para recursos que precisam ser acessíveis pela internet, como o Application Load Balancer e o NAT Gateway.
Sub-rede Privada: Uma sub-rede para recursos que não devem ser acessíveis diretamente pela internet, como as instâncias EC2 no Auto Scaling Group.
Internet Gateway: Permite a comunicação entre os recursos na VPC e a internet.
NAT Gateway: Fornece acesso à internet para instâncias na sub-rede privada.
Application Load Balancer (ALB): Distribui o tráfego de entrada entre várias instâncias EC2 no Auto Scaling Group.
Auto Scaling Group (ASG): Ajusta automaticamente o número de instâncias EC2 em resposta à demanda.
Pré-requisitos
Antes de começar, certifique-se de ter o seguinte:

Uma conta AWS com permissões apropriadas para criar os recursos.
Terraform instalado na sua máquina local.
AWS CLI configurado com suas credenciais.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_autoscaling_group.asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_eip.nat_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_launch_configuration.app](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_configuration) | resource |
| [aws_lb.app_lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.http](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |
| [aws_nat_gateway.nat](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.public_assoc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.ec2_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | ID da AMI para as instâncias EC2 | `string` | `"ami-0c55b159cbfafe1f0"` | no |
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | Zona de disponibilidade onde os recursos serão criados | `string` | `"us-east-1a"` | no |
| <a name="input_desired_capacity"></a> [desired\_capacity](#input\_desired\_capacity) | Número desejado de instâncias no Auto Scaling Group | `number` | `2` | no |
| <a name="input_instance_type"></a> [instance\_type](#input\_instance\_type) | Tipo da instância EC2 | `string` | `"t2.micro"` | no |
| <a name="input_max_size"></a> [max\_size](#input\_max\_size) | Número máximo de instâncias no Auto Scaling Group | `number` | `3` | no |
| <a name="input_min_size"></a> [min\_size](#input\_min\_size) | Número mínimo de instâncias no Auto Scaling Group | `number` | `1` | no |
| <a name="input_private_subnet_cidr"></a> [private\_subnet\_cidr](#input\_private\_subnet\_cidr) | CIDR block para a Subnet Privada | `string` | `"10.0.2.0/24"` | no |
| <a name="input_public_subnet_cidr"></a> [public\_subnet\_cidr](#input\_public\_subnet\_cidr) | CIDR block para a Subnet Pública | `string` | `"10.0.1.0/24"` | no |
| <a name="input_region"></a> [region](#input\_region) | Região AWS onde os recursos serão criados | `string` | `"us-east-1"` | no |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | CIDR block para a VPC | `string` | `"10.0.0.0/16"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_alb_dns_name"></a> [alb\_dns\_name](#output\_alb\_dns\_name) | DNS do Application Load Balancer |
| <a name="output_alb_name"></a> [alb\_name](#output\_alb\_name) | Nome do Application Load Balancer criado |
| <a name="output_autoscaling_group_id"></a> [autoscaling\_group\_id](#output\_autoscaling\_group\_id) | ID do Auto Scaling Group criado |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | ID do Internet Gateway criado |
| <a name="output_nat_gateway_id"></a> [nat\_gateway\_id](#output\_nat\_gateway\_id) | ID do NAT Gateway criado |
| <a name="output_private_subnet_id"></a> [private\_subnet\_id](#output\_private\_subnet\_id) | ID da Subnet Privada criada |
| <a name="output_public_subnet_id"></a> [public\_subnet\_id](#output\_public\_subnet\_id) | ID da Subnet Pública criada |
| <a name="output_target_group_arn"></a> [target\_group\_arn](#output\_target\_group\_arn) | ARN do Target Group criado |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | ID da VPC criada |
<!-- END_TF_DOCS -->
