variable "server_port" {
  description = "Port the server will use"
  type        = number
  default     = 8080
}


variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

