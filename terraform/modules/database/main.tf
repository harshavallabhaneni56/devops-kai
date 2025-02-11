resource "azurerm_cosmosdb_account" "cosmos" {
  name                = "dev-cosmos-db-harsha"
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = "Standard"
  kind               = "GlobalDocumentDB"

  capabilities {
    name = "EnableServerless"
  }

  consistency_policy {
    consistency_level = "Session" 
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }
}