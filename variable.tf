#vpc variables
variable "vpc_cidr" {
  default       = "10.0.0.0/16"
  description   = "vpc cidr block"    
  type          = string
}

variable "public_subnet_az1_cidr" {
  default       = "10.0.0.0/24"
  description   = "public subnet az1 cidr block"    
  type          = string
}

variable "public_subnet_az2_cidr" {
  default       = "10.0.1.0/24"
  description   = "public subnet az2 cidr block"    
  type          = string
}

variable "private_app_subnet_az1_cidr" {
  default       = "10.0.2.0/24"
  description   = "private app subnet az1 cidr block"    
  type          = string
}

variable "private_app_subnet_az2_cidr" {
  default       = "10.0.3.0/24"
  description   = "private app subnet az2 cidr block"    
  type          = string
}

variable "private_data_subnet_az1_cidr" {
  default       = "10.0.4.0/24"
  description   = "private data subnet az1 cidr block"    
  type          = string
}

variable "private_data_subnet_az2_cidr" {
  default       = "10.0.5.0/24"
  description   = "private data subnet az2 cidr block"    
  type          = string
}

# security group variable
variable "ssh_location" {
  default       = "0.0.0.0/0"
  description   = "the ip address that can ssh into the ec2"    
  type          = string
}

# rds variables
variable "database_snapshot_identifier" {
  default       = "arn:aws:rds:us-east-1:789234141785:cluster-snapshot:dpsnapshot"
  description   = "the database snapshot arn"    
  type          = string
}

variable "database_instance_class" {
  default       = "db.t3.micro"
  description   = "the database instance class"    
  type          = string
}

variable "database_instance_identifier" {
  default       = "dev-rds-database"
  description   = "the database instance identifier"    
  type          = string
}

variable "multi_az_deployment" {
  default       = "false"
  description   = "create a standby db instance"    
  type          = string
}

# Application load balancer variable
variable "ssl_certificate_arn" {
  default       = "arn:aws:acm:us-east-1:120761757554:certificate/fdf2d45e-8de0-487f-87a2-6c8e3ae6cdb5"
  description   = "ssl certificate arn"    
  type          = string
}

# Sns topic variable
variable "operator_email" {
  default       = "jbatia.38@gmail.com"
  description   = "a valid email address"    
  type          = string
}

# Auto scaling group variables
variable "launch_template_name" {
  default       = "dev-launch-template"
  description   = "name of the launch template"    
  type          = string
}

variable "ec2_image_id" {
  default       = "ami-025b80cd396bedec9"
  description   = "id of the ami"    
  type          = string
}

variable "ec2_instance_type" {
  default       = "t2.micro"
  description   = "the ec2 instance type"    
  type          = string
}

variable "ec2_key_pair_name" {
  default       = "mykeypair-1"
  description   = "name of the ec2 keypair"    
  type          = string
}
#route53 variables
variable "domain_name" {
  default       = "hotridegh.com"
  description   = "domain name"    
  type          = string
}

variable "record_name" {
  default       = "www"
  description   = "sub domain name"    
  type          = string
}
