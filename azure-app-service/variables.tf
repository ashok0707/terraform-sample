variable "resource_group_name" {
  description = "The name of the resource group where the App Service will be deployed."
}

variable "app_service_name" {
  description = "The name of the Azure App Service."
}

variable "location" {
  description = "The Azure region to deploy the resources."
}

variable "vnet_name" {
  description = "The name of the Virtual Network where the App Service will be deployed."
}

variable "subnet_name" {
  description = "The name of the Subnet within the Virtual Network."
}

variable "app_service_plan_id" {
  description = "The ID of the App Service Plan."
}

variable "staging_slot_count" {
  description = "The number of staging slots to create for the App Service."
  default     = 2
}
