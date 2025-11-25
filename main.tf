
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.name}vnet"
  address_space       = ["10.0.0.0/16"]
  location            = var.location
  resource_group_name = var.resourceGroup
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.name}subnet"
  resource_group_name  = var.resourceGroup
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}