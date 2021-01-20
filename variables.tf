variable "name" {
  type        = string
  description = "Name of the IAM Role"
}

variable "assume_role_entity" {
  type        = string
  description = "Entity to assume the role"
  default     = "ec2"
}

variable "policy" {
  type        = string
  description = "Policy for the IAM Role"
}
