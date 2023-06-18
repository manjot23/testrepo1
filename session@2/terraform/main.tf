terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "firstresourcegroup" {
  name     = "myResourceGroup"
  location = "eastus2"
}

resource "azurerm_resource_group" "secondresourcegroup" {
  name     = "myResourceGroup2323"
  location = "eastus2"
}

resource "azurerm_storage_account" "teststorageaccount" {
  name                      = "storageacdhfdkshdds"
  resource_group_name       = azurerm_resource_group.firstresourcegroup.name
  location                  = azurerm_resource_group.firstresourcegroup.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = false
}


resource "azurerm_storage_account" "teststorageaccount2" {
  name                      = "aahdgsahjbd"
  resource_group_name       = azurerm_resource_group.secondresourcegroup.name
  location                  = azurerm_resource_group.secondresourcegroup.location
  account_tier              = "Standard"
  account_replication_type  = "GRS"
  enable_https_traffic_only = false
}
output "resource_group_name" {
  value = azurerm_resource_group.firstresourcegroup.name
}
