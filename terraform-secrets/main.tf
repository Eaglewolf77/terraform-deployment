provider "azurerm" {
  features {}
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

data "azurerm_key_vault" "existing" {
  name                = "keyvault-kv-cloud23"
  resource_group_name = "tf-test-rg"
}

resource "azurerm_key_vault_secret" "ssh_key" {
  name         = "sshpublickey"
  value        = var.ssh_public_key
  key_vault_id = data.azurerm_key_vault.existing.id

  lifecycle {
    prevent_destroy = true
    ignore_changes  = [value]
  }
}

variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}
variable "client_object_id" {
  description = "Object ID for the Service Principal"
}
