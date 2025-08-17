# resource "azurerm_resource_group" "terraform--rg" {
#   name     = "terraform--rg"
#   location = "West Europe"
# }
resource "azurerm_role_assignment" "terraform-ra" {
  scope              = data.azurerm_subscription.primary.id
  role_definition_name = "Contributor"
  principal_id       = "e02f2a8b-bb41-4e57-ab38-5f33f75df99a"
}

data "azurerm_subscription" "primary" {
  
}