provider "azurerm" {
  features {}
  subscription_id = "4c37f0e1-134e-4a4e-8d0f-fde9cb825586"
}

# Variables
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Azure region for the Data Factory"
  type        = string
}

variable "adf_name" {
  description = "Name of the Azure Data Factory"
  type        = string
}

# Resource: Azure Data Factory
resource "azurerm_data_factory" "example" {
  name                = var.adf_name
  resource_group_name = var.resource_group_name
  location            = var.location

  identity {
    type = "SystemAssigned"
  }

}
