resource "azurerm_container_registry" "main" {
  name                = "petclinice2acr"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  sku                 = "Basic"
  admin_enabled       = true

  tags = {
    project = var.project_name
  }
}
