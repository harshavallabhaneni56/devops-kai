output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "vnet_id" {
  value = module.network.vnet_id
}

output "aks_name" {
  value = module.compute.aks_name
}

output "db_name" {
  value = module.database.db_name
}

output "storage_account_name" {
  value = module.storage.storage_account_name
}
