variable "location" {
  description = "Azure region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "rg-petclinic-e2e"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "petclinic-e2e"
}
