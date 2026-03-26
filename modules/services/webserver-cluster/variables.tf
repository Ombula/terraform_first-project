variable "server_port" {
  description = "Port the server will use"
  type        = number
  default     = 8080
}


variable "instance_type" {
  description = "The type of EC2 instances to run (e.g t3.micro)"
  type        = string
}

variable "min_size"{
  description = "The minimum number of EC2 instances in the ASG"
  type = number
}

variable "max_size"{
  description = "The maximum number of EC2 instances in the ASG"
  type = number
}

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type = string
}

variable "db_remote_state_bucket" {
  description = "The name of the s3 bucket for the database's remote state"
  type = string
}

variable "db_remote_state_key" {
  description = "The path for the databases's remote state in s3"
  type = string
}