terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = ""
}

resource "azurerm_resource_group" "RG" {
  name     = "RG_Hitesh_2"
  location = "East US"
}

resource "azurerm_storage_account" "acc" {
  name                     = "rgsaccount1"
  resource_group_name      = azurerm_resource_group.RG.name
  location                 = azurerm_resource_group.RG.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
