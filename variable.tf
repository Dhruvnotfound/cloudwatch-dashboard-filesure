variable "alert_mail" {
  description = "email id to send alert when a alarm goes off"
  type = string
  default = "your-email@example.com"  # Replace with your email address
}

variable "region" {
  default = "us-east-1"
  type = string
}

variable "InstanceId" {
  default = "i-0400d8366386ff8b8"  # replace with your instance id
  description = "ec2 instance id"
  type = string
}

