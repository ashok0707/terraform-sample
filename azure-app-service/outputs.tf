output "app_service_url" {
  description = "The URL of the deployed Azure App Service."
  value       = module.app_service.app_service_url
}
