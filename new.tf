variable "azurerm_resource_group_name" {
  type = string
}

variable "azurerm_resource_group_location" {
  type = string
}

resource "azurerm_storage_account" "myStorage" {
  resource_group_name      = var.azurerm_resource_group_name
  location                 = var.azurerm_resource_group_location
  account_tier             = "Standard"
  name                     = "Storage-acc"
  account_replication_type = "GRS"


}
output "storage_reg" {
  value = azurerm_storage_account.myStorage.account_replication_type

}
