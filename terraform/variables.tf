variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "East US"
}

variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "DevOps_Project"
}

variable "acr_name" {
  description = "Name of Azure Container Registry"
  type        = string
  default     = "devopskaiprojectharsha"  
}