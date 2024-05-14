provider "azurerm" {
  features {}
}

module "network" {
  source            = "./network"
  location          = var.location
  resource_group_name = var.resource_group_name
  vnet_name         = var.vnet_name
  subnet_name       = var.subnet_name
}

module "app_service" {
  source              = "./app_service"
  resource_group_name = var.resource_group_name
  location            = var.location
  app_service_name    = var.app_service_name
  subnet_id           = module.network.subnet_id
  app_service_plan_id = var.app_service_plan_id
}

output "app_service_url" {
  value = module.app_service.app_service_url
}
