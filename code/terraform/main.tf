terraform {
  backend "s3" {
    bucket = "pnieto-terraform-state"
    key    = "terraform/state"
    region = "eu-west-1"  # Change to your desired AWS region
  }
}

module "api_repository" {
  source = "./api"
  db_host = module.rds.rds_host
  vpc_connector_arn = module.rds.vpc_connector_arn
  rds_root_user = var.rds_root_user
  rds_root_pass = var.rds_root_pass
  rds_db = var.rds_db
}

module "api_messaging" {
  source = "./messaging"
  db_host = module.rds.rds_host
  rds_root_user = var.rds_root_user
  rds_root_pass = var.rds_root_pass
  rds_db = var.rds_db  
}

module "rds" {
  source = "./rds"
  rds_root_user = var.rds_root_user
  rds_root_pass = var.rds_root_pass
  rds_db = var.rds_db
}

output "rds_host" {
  description = "The endpoint of the RDS instance"
  value       = module.rds.rds_host
}

output "vpc_connector_arn" {
  description = "The ARN of the VPC connector"
  value = module.rds.vpc_connector_arn
}