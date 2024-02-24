#vpc variabes
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

#security group variable
variable "ssh_location" {
 default       = "0.0.0.0/0"
 description   = "the ip address that can ssh into the ec2 instance"
 type          = string
}

#rds variables
variable "database_snapshot_identifier" {
 default       = "east-1:120761757554:snapshot:fleetcart-snapshot"
 description   = "the database snapshot arn"
 type          = string
}

variable "database_instance_class" {
 default       = "db.t2.micro"
 description   = "the database instance type"
 type          = string
}

variable "database_instance_identifier" {
 default       = "dev-rds-db"
 description   = "the database instance identifier"
 type          = string
}

variable "multi_az_deployment" {
 default       = "false"
 description   = "create a standby db instance"
 type          = bool
}

#application load balancer variables
variable "ssl_certificate_arn" {
  default      = "arn:aws:acm:us-east-1:120761757554:certificate/041b22af-210a-4030-8174-a1d590f7daee"
  description  = "ssl certificate arn"
  type         = string
}
#sns top variables
variable "operator_email" {
  default      = "jbatia.38@gmail.com"
  description  = "a valid email address"
  type         = string
}