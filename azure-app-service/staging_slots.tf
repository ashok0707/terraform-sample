resource "azurerm_app_service_slot" "staging" {
  count                = var.staging_slot_count
  name                 = "${var.app_service_name}-${count.index}-staging"
  app_service_id       = azurerm_app_service.main.id
  configuration_source = azurerm_app_service.main.id
}
