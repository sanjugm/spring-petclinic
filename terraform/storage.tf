resource "azurerm_storage_account" "main" {
  name                     = "petclinice2estorage"
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  min_tls_version          = "TLS1_2"

  tags = {
    project = var.project_name
  }
}
