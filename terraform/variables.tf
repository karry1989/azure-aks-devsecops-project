variable "subscription_id" {
  description = "ed16fed7-8a53-4a3a-b9fd-2a0afcba4f51"
  type        = string
}

variable "location" {
  description = "Azure Region"
  type        = string
  default     = "Central India"
}

variable "resource_group_name" {
  description = "Azure Resource Group Name"
  type        = string
  default     = "rg-devsecops-prod"
}