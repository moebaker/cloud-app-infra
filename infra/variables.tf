variable "aws_region" {
  description = "AWS region to deploy into"
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  default     = "default"
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key pair name"
  type        = string
}

variable "app_port" {
  description = "Port exposed by the app"
  default     = 5000
}
