###### ---------------------------------------------------------------------------- ######
###        previously                                present        ###
###  aws_security_group_rule     ->    aws_vpc_security_group_ingress_rule               
###  type = "ingress"            ->                -(removed)
###  protocol = "tcp"            ->             ip_protocol = "tcp"
### cidr_ipv4 = ["0.0.0.0/0"]  ->              cidr_ipv4 = ["0.0.0.0/0"]
###### ---------------------------------------------------------------------------- ######

# # MongoDB
# resource "aws_vpc_security_group_ingress_rule" "mongodb_vpn" {
#   count = length(var.mongodb_ports_vpn)
#   from_port         = var.mongodb_ports_vpn[count.index]
#   to_port           = var.mongodb_ports_vpn[count.index]
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.mongodb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "mongodb_bastion" {  
#   # count = length(var.mongodb_ports_vpn)
#   # from_port         = var.mongodb_ports_vpn[count.index]
#   # to_port           = var.mongodb_ports_vpn[count.index]
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.mongodb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "mongodb_catalogue" {
#   from_port         = 27017
#   to_port           = 27017
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.catalogue_sg_id
#   security_group_id = local.mongodb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "mongodb_user" {
#   from_port         = 27017
#   to_port           = 27017
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.user_sg_id
#   security_group_id = local.mongodb_sg_id
# }

# # Redis
# resource "aws_vpc_security_group_ingress_rule" "redis_vpn" {
#   count = length(var.redis_ports_vpn)
#   from_port         = var.redis_ports_vpn[count.index]
#   to_port           = var.redis_ports_vpn[count.index]
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.redis_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "redis_bastion" {
#   # count = length(var.redis_ports_vpn)
#   # from_port         = var.redis_ports_vpn[count.index]
#   # to_port           = var.redis_ports_vpn[count.index]
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.redis_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "redis_user" {
#   from_port         = 6379
#   to_port           = 6379
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.user_sg_id
#   security_group_id = local.redis_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "redis_cart" {
#   from_port         = 6379
#   to_port           = 6379
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.cart_sg_id
#   security_group_id = local.redis_sg_id
# }

# # MYSQL
# resource "aws_vpc_security_group_ingress_rule" "mysql_vpn" {
#   count = length(var.mysql_ports_vpn)
#   from_port         = var.mysql_ports_vpn[count.index]
#   to_port           = var.mysql_ports_vpn[count.index]
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.mysql_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "mysql_bastion" {
#   # count = length(var.mysql_ports_vpn)
#   # from_port         = var.mysql_ports_vpn[count.index]
#   # to_port           = var.mysql_ports_vpn[count.index]
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.mysql_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "mysql_shipping" {
#   from_port         = 3306
#   to_port           = 3306
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.shipping_sg_id
#   security_group_id = local.mysql_sg_id
# }

# # RabbitMQ
# resource "aws_vpc_security_group_ingress_rule" "rabbitmq_vpn" {
#   count = length(var.rabbitmq_ports_vpn)
#   from_port         = var.rabbitmq_ports_vpn[count.index]
#   to_port           = var.rabbitmq_ports_vpn[count.index]
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.rabbitmq_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "rabbitmq_bastion" {
#   # count = length(var.rabbitmq_ports_vpn)
#   # from_port         = var.rabbitmq_ports_vpn[count.index]
#   # to_port           = var.rabbitmq_ports_vpn[count.index]
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.rabbitmq_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "rabbitmq_payment" {
#   from_port         = 5672
#   to_port           = 5672
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.payment_sg_id
#   security_group_id = local.rabbitmq_sg_id
# }

# #Catalogue
# resource "aws_vpc_security_group_ingress_rule" "catalogue_vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.catalogue_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "catalogue_bastion_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.catalogue_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "catalogue_vpn_http" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.catalogue_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "catalogue_backend-alb" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.backend_lb_sg_id
#   security_group_id = local.catalogue_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "catalogue_cart" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.cart_sg_id
#   security_group_id = local.catalogue_sg_id
# }

# #User
# resource "aws_vpc_security_group_ingress_rule" "user_vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.user_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "user_bastion_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.user_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "user_vpn_http" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.user_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "user_backend-alb" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.backend_lb_sg_id
#   security_group_id = local.user_sg_id
# }

# #Cart
# resource "aws_vpc_security_group_ingress_rule" "cart_vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.cart_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "cart_bastion_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.cart_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "cart_vpn_http" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.cart_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "cart_backend-alb" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.backend_lb_sg_id
#   security_group_id = local.cart_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "cart_payment" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.payment_sg_id
#   security_group_id = local.cart_sg_id
# }

# #Shipping
# resource "aws_vpc_security_group_ingress_rule" "shipping_vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.shipping_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "shipping_bastion_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.shipping_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "shipping_vpn_http" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.shipping_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "shipping_backend-alb" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.backend_lb_sg_id
#   security_group_id = local.shipping_sg_id
# }

# #Payment
# resource "aws_vpc_security_group_ingress_rule" "payment_vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.payment_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "payment_bastion_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.payment_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "payment_vpn_http" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.payment_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "payment_backend-alb" {
#   from_port         = 8080
#   to_port           = 8080
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.backend_lb_sg_id
#   security_group_id = local.payment_sg_id
# }

# #Backend ALB
# resource "aws_vpc_security_group_ingress_rule" "backend-alb_vpn" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "backend-alb_bastion" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "backend-alb_frontend" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.frontend_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "backend-alb_cart" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.cart_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "backend-alb_shipping" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.shipping_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "backend-alb_payment" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.payment_sg_id
#   security_group_id = local.backend_lb_sg_id
# }

# #Frontend
# resource "aws_vpc_security_group_ingress_rule" "frontend_vpn" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.vpn_sg_id
#   security_group_id = local.frontend_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "frontend_bastion" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.frontend_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "frontend_frontend-alb" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.frontend_lb_sg_id
#   security_group_id = local.frontend_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "frontend_bastion" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.frontend_sg_id
# }

# #Frontend ALB
# resource "aws_vpc_security_group_ingress_rule" "frontend-alb_http" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   cidr_ipv4 = "0.0.0.0/0"
#   security_group_id = local.frontend_lb_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "frontend-alb_https" {
#   from_port         = 443
#   to_port           = 443
#   ip_protocol          = "tcp"
#   cidr_ipv4 = "0.0.0.0/0"
#   security_group_id = local.frontend_lb_sg_id
# }

## Bastion
resource "aws_vpc_security_group_ingress_rule" "bastion_laptop" {
  from_port         = 22
  to_port           = 22
  ip_protocol          = "tcp"
  cidr_ipv4       = "${chomp(data.http.my_ipv4.response_body)}/32" ##["0.0.0.0/0"]
  security_group_id = local.bastion_sg_id
}

# #VPN ports 22, 443, 1194, 943
# resource "aws_vpc_security_group_ingress_rule" "vpn_ssh" {
#   from_port         = 22
#   to_port           = 22
#   ip_protocol          = "tcp"
#   cidr_ipv4 = ["0.0.0.0/0"]
#   security_group_id = local.vpn_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "vpn_https" {
#   from_port         = 443
#   to_port           = 443
#   ip_protocol          = "tcp"
#   cidr_ipv4 = ["0.0.0.0/0"]
#   security_group_id = local.vpn_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "vpn_1194" {
#   from_port         = 1194
#   to_port           = 1194
#   ip_protocol          = "tcp"
#   cidr_ipv4 = ["0.0.0.0/0"]
#   security_group_id = local.vpn_sg_id
# }

# resource "aws_vpc_security_group_ingress_rule" "vpn_943" {
#   from_port         = 943
#   to_port           = 943
#   ip_protocol          = "tcp"
#   cidr_ipv4 = ["0.0.0.0/0"]
#   security_group_id = local.vpn_sg_id
# }

# /* # backend ALB accepting connections from my bastion host on port no 80
# resource "aws_vpc_security_group_ingress_rule" "backend-alb_bastion" {
#   from_port         = 80
#   to_port           = 80
#   ip_protocol          = "tcp"
#   referenced_security_group_id = local.bastion_sg_id
#   security_group_id = local.backend_lb_sg_id
# } */