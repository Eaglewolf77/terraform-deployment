provider "azurerm" {
  features {}
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
    ignore_changes = [
      value
    ]
  }
}
