resource "azurerm_static_web_app" "main" {
  name                = "${var.project_name}-swa"
  resource_group_name = azurerm_resource_group.main.name
  location            = "East US 2"
  sku_tier            = "Free"
  sku_size            = "Free"

  tags = {
    project = var.project_name
  }
}
