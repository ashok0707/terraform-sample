resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "main" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.app_service_plan_id

  # Additional configurations
}

resource "azurerm_app_service_virtual_network_swift_connection" "example" {
  app_service_id            = azurerm_app_service.main.id
  vnet_subnet_id            = azurerm_subnet.example.id
  swift_network_resource_id = data.azurerm_subnet.example.id
}
