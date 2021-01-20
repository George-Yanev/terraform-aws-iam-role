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

variable "path" {
  default     = "/"
  type        = string
  description = "Path in which to create the role and the policy."
}

variable "description" {
  default     = "Managed by Terraform"
  type        = string
  description = "The description of the role and the policy."
}

variable "max_session_duration" {
  default     = "3600"
  type        = string
  description = "The maximum session duration (in seconds) that you want to set for the specified role."
}

variable "force_detach_policies" {
  default     = false
  type        = bool
  description = "Specifies to force detaching any policies the role has before destroying it."
}
