resource "azurerm_resource_group" "MyRG" {
  name     = "myfirstrg1"
  location = "East US"
  tags = { environment = "Prod"
  }
}

resource "azurerm_storage_account" "MySA" {
  name                     = "myfirstsa09022024231900"
  resource_group_name      = azurerm_resource_group.MyRG.name
  location                 = azurerm_resource_group.MyRG.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}
