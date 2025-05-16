terraform {
  backend "azurerm" {
    resource_group_name  = "tf-backend-rg"
    storage_account_name = "tfbackendstorage7791"     # byt till rätt namn
    container_name       = "tfstate"
    key                  = "terraform-secrets.tfstate"
  }
}
