# Generated by GH Copilot

output "resource_group_id" {
  description = "The ID of the resource group"
  value       = module.resource_group.resource_group_id
}

output "app_service_id" {
  description = "The ID of the App Service"
  value       = module.app_service.app_service_id
}

output "app_service_default_hostname" {
  description = "The default hostname of the App Service"
  value       = module.app_service.app_service_default_hostname
}

output "cosmos_db_account_id" {
  description = "The ID of the Cosmos DB account"
  value       = module.cosmos_db.cosmos_db_account_id
}

output "cosmos_db_account_endpoint" {
  description = "The endpoint of the Cosmos DB account"
  value       = module.cosmos_db.cosmos_db_account_endpoint
}

output "storage_account_id" {
  description = "The ID of the storage account"
  value       = module.storage_account.storage_account_id
}

output "storage_account_name" {
  description = "The name of the storage account"
  value       = module.storage_account.storage_account_name
}
