variable "mongodb_ports_vpn" {
  default = ["22", "27017"]
}

variable "redis_ports_vpn" {
  default = ["22", "6379"]
}

variable "mysql_ports_vpn" {
  default = ["22", "3306"]
}

variable "rabbitmq_ports_vpn" {
  default = ["22", "5672"]
}

variable "catalogue_ports_vpn" {
  default = ["22", "8080"]
}


variable "project_name" {
  type = string
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}