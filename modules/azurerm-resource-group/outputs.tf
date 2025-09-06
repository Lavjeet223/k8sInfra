output "rg_ids" {
  value = { for key, value in azurerm_resource_group.resourcegroups: value.name => value.id } 
}
