
provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket       = "ombula-terraform-state-2026-fresh-001"
    key          = "prod/data-stores/mysql/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true
    encrypt      = true

    dynamodb_table = "terraform-fresh-locks"

  }
}


resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t4g.micro"
  skip_final_snapshot = true
  db_name             = "example_database"

  username = var.db_username
  password = var.db_password
}
