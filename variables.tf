variable "name" {
  description = "Name of resource"
  type        = string
  default     = null
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = null
}

variable "managed_by" {
  description = "Maneged by..."
  type        = string
  default     = "terraform"
}

variable "owner" {
  description = "Owner of resource"
  type        = string
  default     = null
}

variable "application" {
  description = "Name off application."
  type        = string
  default     = null
}

variable "organization" {
  description = "organization name."
  type        = string
  default     = null
}

variable "team" {
  description = "Name of  owrk team."
  type        = string
  default     = null
}

variable "tags" {
  description = "Additional tags."
  type        = map(string)
  default     = {}
}
