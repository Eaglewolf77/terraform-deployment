terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117"
    }
  }

  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfbackendstorageaccount"
    container_name       = "tfstate"
    key                  = "terraform-infra.tfstate"
  }
}

provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}
resource "azurerm_resource_group" "rg" {
  name     = "tf-test-rg"
  location = "swedencentral"
}

/* Här fortsätter din vanliga kod för vNet, NSG, VM osv */
