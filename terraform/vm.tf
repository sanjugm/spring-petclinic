resource "azurerm_network_interface" "vm" {
  name                = "${var.project_name}-vm-nic"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.app.id
    private_ip_address_allocation = "Dynamic"
  }

  tags = {
    project = var.project_name
  }
}

resource "azurerm_linux_virtual_machine" "sonarqube" {
  name                = "${var.project_name}-sonarqube-vm"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  size                = "Standard_B2s"
  admin_username      = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.vm.id
  ]

 admin_ssh_key {
  username   = "azureuser"
  public_key = var.ssh_public_key
}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "ubuntu-24_04-lts"
    sku       = "server"
    version   = "latest"
  }

  tags = {
    project = var.project_name
    role    = "sonarqube"
  }
}
