terraform {
  backend "azurerm" {
    resource_group_name  = "YashRG"
    storage_account_name = "yashstorageaccount876"
    container_name       = "container1"
    key                  = "terraform.tfstate"
  }
}