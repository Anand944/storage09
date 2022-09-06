resource "azurerm_resource_group" "rg" {
  name     = "rg08"
  location = "East Us"
}

resource "azurerm_storage_account" "storageac" {
  name                     = "storagacc07"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "prod"
  }
}